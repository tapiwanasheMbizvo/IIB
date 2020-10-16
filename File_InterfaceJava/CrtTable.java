import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.ibm.broker.javacompute.MbJavaComputeNode;
import com.ibm.broker.plugin.MbElement;
import com.ibm.broker.plugin.MbException;
import com.ibm.broker.plugin.MbMessage;
import com.ibm.broker.plugin.MbMessageAssembly;
import com.ibm.broker.plugin.MbOutputTerminal;
import com.ibm.broker.plugin.MbUserException;
import com.ibm.broker.plugin.MbNode.JDBC_TransactionType;


public class CrtTable extends MbJavaComputeNode {

	public void evaluate(MbMessageAssembly inAssembly) throws MbException {
		MbOutputTerminal out = getOutputTerminal("out");
		MbOutputTerminal alt = getOutputTerminal("alternate");

		MbMessage inMessage = inAssembly.getMessage();
		MbMessageAssembly outAssembly = null;
		MbMessage env = inAssembly.getGlobalEnvironment();
		MbMessage newEnv = new MbMessage(env);
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
		    Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);

			
		
			    
			   
			    //createTable(conn,tableName);
			
			newEnv.getRootElement().createElementAsFirstChild(MbElement.TYPE_NAME_VALUE, "tableName", tableName); 
			 outAssembly = new MbMessageAssembly(
						inAssembly,
						newEnv,
						inAssembly.getExceptionList(),
						inAssembly.getMessage());
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

	
	
	public void createTable(Connection conn, String tableName){
		
		String sql = "create table "+tableName+"(GZAB1 VARCHAR(254),GZAB2 VARCHAR(254), GZAMA1 VARCHAR(254),GZAMA2 VARCHAR(254)," +
				"GZAN1 VARCHAR(254),GZAN2 VARCHAR(254),GZAS1 VARCHAR(254),GZAS2 VARCHAR(254),GZBRNM VARCHAR(254),GZCCY1 VARCHAR(254)," +
				"GZCCY2 VARCHAR(254),GZDRF1 VARCHAR(254),GZDRF2 VARCHAR(254),GZEXRH VARCHAR(254),GZNR1 VARCHAR(254),GZNR2 VARCHAR(254)," +
				"GZNR3 VARCHAR(254),GZNR4 VARCHAR(254),GZNR5 VARCHAR(254),GZNR6 VARCHAR(254),GZNR7 VARCHAR(254),GZNR8 VARCHAR(254)," +
				"GZPBR VARCHAR(254),GZPSQ7 VARCHAR(254),GZQEVM VARCHAR(254),GZREF VARCHAR(254),GZTCD1 VARCHAR(254),GZTCD2 VARCHAR(254),GZTREF VARCHAR(254), GZVFR1 VARCHAR(254),GZVFR2 VARCHAR(254),CHARGE SMALLINT,DATERECEIVED TIMESTAMP)";
		
		String string = "create table "+tableName+"(GZAB1 VARCHAR(254),GZAB2 VARCHAR(254), GZAMA1 VARCHAR(254),GZAMA2 VARCHAR(254),GZAN1 VARCHAR(254)," +
				"GZAN2 VARCHAR(254),GZAS1 VARCHAR(254),GZAS2 VARCHAR(254),GZBRNM VARCHAR(254),GZCCY1 VARCHAR(254),GZCCY2 VARCHAR(254),GZDRF1 VARCHAR(254)," +
				"GZDRF2 VARCHAR(254),GZEXRH VARCHAR(254),GZNR1 VARCHAR(254),GZNR2 VARCHAR(254),GZNR3 VARCHAR(254),GZNR4 VARCHAR(254),GZNR5 VARCHAR(254)," + 
				"GZNR6 VARCHAR(254),GZNR7 VARCHAR(254),GZNR8 VARCHAR(254),GZPBR VARCHAR(254),GZPSQ7 VARCHAR(254),GZQEVM VARCHAR(254),GZREF VARCHAR(254)," +
				"GZTCD1 VARCHAR(254),GZTCD2 VARCHAR(254),GZTREF VARCHAR(254), GZVFR1 VARCHAR(254),GZVFR2 VARCHAR(254),CHARGE SMALLINT,DATERECEIVED TIMESTAMP," +
				"GROUPREFERENCE VARCHAR(254),NARRATIVE VARCHAR(254),RESPONSECODE VARCHAR(5),REVERSALTCD1 VARCHAR(10),REVERSALTCD2 VARCHAR(10),BRNM VARCHAR(10)," +
				"FORMAT VARCHAR(10),JTT VARCHAR(5),MAPLOCN VARCHAR(5),MSGTYPE VARCHAR(40),NMSGS VARCHAR(10),ORIGIN VARCHAR(10),ORIGTYPE VARCHAR(40),PCREF VARCHAR(40)," +
				"PASSWORD VARCHAR(10),REPLY VARCHAR(5),REPLYMSG VARCHAR(64),RESPMODE VARCHAR(5),RPGM VARCHAR(10),RPYQUEUE VARCHAR(20),SPAREA VARCHAR(254),SPAREB VARCHAR(254)," +
				"SRCSYS VARCHAR(10),TGTSYS VARCHAR(10),TRANSQ VARCHAR(10),TSTAMP VARCHAR(20),USER VARCHAR(10),USID VARCHAR(10),VERSION VARCHAR(10),WARNS VARCHAR(5)," +
				"WSID VARCHAR(15),DRV VARCHAR(10),GZIEA VARCHAR(1),PICKED VARCHAR(25),CHARGEAMOUNT VARCHAR(254),XRREC VARCHAR(254),MSGTXT VARCHAR(78)," +
				"USERDATA  VARCHAR(254),CHARGECODE VARCHAR(254),ACCOUNTBRANCH VARCHAR(255),TERMINAL INTEGER,TERMINALID VARCHAR(255),id integer not null GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),PRIMARY KEY (id) )";
		
	
		    
	  try {
		  Statement  stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
		stmt.executeUpdate(string);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		
	}
}
