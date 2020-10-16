import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.ibm.broker.javacompute.MbJavaComputeNode;
import com.ibm.broker.plugin.MbElement;
import com.ibm.broker.plugin.MbException;
import com.ibm.broker.plugin.MbMessage;
import com.ibm.broker.plugin.MbMessageAssembly;
import com.ibm.broker.plugin.MbOutputTerminal;
import com.ibm.broker.plugin.MbUserException;


public class BULK_TRANSACTIONS_DO_BULK extends MbJavaComputeNode {

	public void evaluate(MbMessageAssembly inAssembly) throws MbException {
		MbOutputTerminal out = getOutputTerminal("out");
		MbOutputTerminal alt = getOutputTerminal("alternate");

		MbMessage inMessage = inAssembly.getMessage();
		//MbMessageAssembly outAssembly = null;
		MbMessage env = inAssembly.getGlobalEnvironment();
		MbMessage newEnv = new MbMessage(env);
		
		
		MbMessageAssembly outAssembly = new MbMessageAssembly(
				inAssembly,
				newEnv,
				inAssembly.getExceptionList(),
				inAssembly.getMessage());
		try {
			// create new message as a copy of the input
			MbMessage outMessage = new MbMessage(inMessage);
			outAssembly = new MbMessageAssembly(inAssembly, outMessage);
			// ----------------------------------------------------------
			// Add user code below
			MbElement inputLocalEnv = inAssembly.getLocalEnvironment().getRootElement();
			MbElement firstchild = inputLocalEnv.getFirstChild().getFirstChild().getNextSibling();
			String fieldname = (String) firstchild.getValue();
			
			String tableName = fieldname.substring(0, fieldname.length() - 4);	
			tableName = tableName.replaceAll("_", "");
			Connection conn = getJDBCType4Connection("ESBDB",JDBC_TransactionType.MB_TRANSACTION_AUTO);
			 Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
			 String date  =null;
			 String sql = "select GZAB1 || GZAN1 || GZAS1 as CREDITACC, " +
			 		"GZAB2|| GZAN2 || GZAS2 AS DEBITACC," +
			 		"gzbrnm, gztcd1, gztcd2," +
			 		" TERMINALID,SUM(CAST (SUBSTR(GZAMA2, 1, LENGTH(GZAMA2) - 1) AS INT)) AS TOTAL," +
			 		" CHARGECODE  ,count(id) as batch_count from "+tableName+"  " +
			 		"group by GZAB1 || GZAN1 || GZAS1, GZAB2|| GZAN2 || GZAS2, gzbrnm, gztcd1, gztcd2, CHARGECODE, TERMINALID";
			 ResultSet res = stmt.executeQuery(sql);
			 
			 while (res.next()){
								 
				 String debitAcc = res.getString("DEBITACC");
				 String creditAcc = res.getString("CREDITACC");
				 String debitCode = res.getString("GZTCD1");
				 String terminal = res.getString("TERMINALID");
				 String creditCode = res.getString("GZTCD2");
				 int amount = res.getInt("TOTAL");
				 
				 newEnv.getRootElement().delete();
			 	 newEnv.getRootElement().createElementAsFirstChild(MbElement.TYPE_NAME_VALUE, "DEBITACC", debitAcc);
			 	 newEnv.getRootElement().createElementAsFirstChild(MbElement.TYPE_NAME_VALUE, "TERMINALID", terminal);
				 newEnv.getRootElement().createElementAsFirstChild(MbElement.TYPE_NAME_VALUE, "CREDITACC", creditAcc);
				 newEnv.getRootElement().createElementAsFirstChild(MbElement.TYPE_NAME_VALUE, "CREDITCODE", debitCode);
				 newEnv.getRootElement().createElementAsFirstChild(MbElement.TYPE_NAME_VALUE, "DEBITCODE", creditCode);
				 newEnv.getRootElement().createElementAsFirstChild(MbElement.TYPE_NAME_VALUE, "AMOUNT", amount);
				 
				 outAssembly = new MbMessageAssembly(
							inAssembly,
							newEnv,
							inAssembly.getExceptionList(),
							inAssembly.getMessage());
				 out.propagate(outAssembly);
				 
			
	            }
			 
			 //String delete = " DELETE FROM EQTRANSFER_TEMP ";
			 
			 //stmt.executeUpdate(delete);
			 
			
			
			// End of user code
			// ----------------------------------------------------------
		} catch (MbException e) {
			// Re-throw to allow Broker handling of MbException
			throw e;
		} catch (RuntimeException e) {
			// Re-throw to allow Broker handling of RuntimeException
			throw e;
		} catch (Exception e) {
			// Consider replacing Exception with type(s) thrown by user code
			// Example handling ensures all exceptions are re-thrown to be handled in the flow
			throw new MbUserException(this, "evaluate()", "", "", e.toString(),
					null);
		}
		// The following should only be changed
		// if not propagating message to the 'out' terminal
		//out.propagate(outAssembly);

	}

}
