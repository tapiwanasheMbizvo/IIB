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
import com.ibm.broker.plugin.MbNode.JDBC_TransactionType;

public class TXN_FLOW_EQ_DATE extends MbJavaComputeNode {

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
			Connection conn = getJDBCType4Connection("P8ZBDR",JDBC_TransactionType.MB_TRANSACTION_AUTO);
			 Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
			 String date  =null;
			 ResultSet res = stmt.executeQuery("SELECT substr(TISCTL,135,7) from kfilpa2.tipf");
		 
		 while (res.next()){

			 	date = res.getString(1);
             //System.out.println("VALUS IS "+ res.getString(1));
            }
			 
			 newEnv.getRootElement().createElementAsFirstChild(MbElement.TYPE_NAME_VALUE, "eqDate", date);
			 outAssembly = new MbMessageAssembly(
						inAssembly,
						newEnv,
						inAssembly.getExceptionList(),
						inAssembly.getMessage());
			
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
		out.propagate(outAssembly);

	}

}
