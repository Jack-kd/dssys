package org.seamless.util.dbunit;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.sql.DataSource;
import org.dbunit.database.DatabaseConfig;
import org.dbunit.database.DatabaseConnection;
import org.dbunit.database.IDatabaseConnection;
import org.dbunit.dataset.IDataSet;
import org.dbunit.dataset.ReplacementDataSet;
import org.dbunit.dataset.xml.FlatXmlDataSet;
import org.dbunit.operation.DatabaseOperation;

/* loaded from: classes5.dex */
public abstract class DBUnitOperations extends ArrayList<Op> {
    private static final Logger log = Logger.getLogger(DBUnitOperations.class.getName());

    public static class ClasspathOp extends Op {
        public ClasspathOp(String str) {
            super(str);
        }

        @Override // org.seamless.util.dbunit.DBUnitOperations.Op
        public InputStream openStream(String str) {
            return Thread.currentThread().getContextClassLoader().getResourceAsStream(str);
        }

        public ClasspathOp(String str, String str2) {
            super(str, str2);
        }

        public ClasspathOp(String str, String str2, DatabaseOperation databaseOperation) {
            super(str, str2, databaseOperation);
        }
    }

    public static abstract class Op {
        ReplacementDataSet dataSet;
        DatabaseOperation operation;

        public Op(String str) {
            this(str, null, DatabaseOperation.CLEAN_INSERT);
        }

        public void execute(IDatabaseConnection iDatabaseConnection) {
            try {
                this.operation.execute(iDatabaseConnection, this.dataSet);
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }

        public IDataSet getDataSet() {
            return this.dataSet;
        }

        public DatabaseOperation getOperation() {
            return this.operation;
        }

        public abstract InputStream openStream(String str);

        public Op(String str, String str2) {
            this(str, str2, DatabaseOperation.CLEAN_INSERT);
        }

        public Op(String str, String str2, DatabaseOperation databaseOperation) {
            ReplacementDataSet replacementDataSet;
            try {
                if (str2 != null) {
                    replacementDataSet = new ReplacementDataSet(new FlatXmlDataSet(openStream(str), openStream(str2)));
                } else {
                    replacementDataSet = new ReplacementDataSet(new FlatXmlDataSet(openStream(str)));
                }
                this.dataSet = replacementDataSet;
                replacementDataSet.addReplacementObject("[NULL]", (Object) null);
                this.operation = databaseOperation;
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    public abstract void disableReferentialIntegrity(IDatabaseConnection iDatabaseConnection);

    public void editConfig(DatabaseConfig databaseConfig) {
    }

    public abstract void enableReferentialIntegrity(IDatabaseConnection iDatabaseConnection);

    public void execute() throws Throwable {
        IDatabaseConnection connection;
        log.info("Executing DBUnit operations: " + size());
        try {
            connection = getConnection();
            try {
                disableReferentialIntegrity(connection);
                int size = size();
                int i2 = 0;
                while (i2 < size) {
                    Op op = get(i2);
                    i2++;
                    op.execute(connection);
                }
                enableReferentialIntegrity(connection);
                if (connection != null) {
                    try {
                        connection.close();
                    } catch (Exception e2) {
                        log.log(Level.WARNING, "Failed to close connection after DBUnit operation: " + e2, (Throwable) e2);
                    }
                }
            } catch (Throwable th) {
                th = th;
                if (connection != null) {
                    try {
                        connection.close();
                    } catch (Exception e3) {
                        log.log(Level.WARNING, "Failed to close connection after DBUnit operation: " + e3, (Throwable) e3);
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            connection = null;
        }
    }

    public IDatabaseConnection getConnection() {
        try {
            DatabaseConnection databaseConnection = new DatabaseConnection(getDataSource().getConnection());
            editConfig(databaseConnection.getConfig());
            return databaseConnection;
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    public abstract DataSource getDataSource();

    public class FileOp extends Op {
        public FileOp(String str) {
            super(str);
        }

        @Override // org.seamless.util.dbunit.DBUnitOperations.Op
        public InputStream openStream(String str) {
            try {
                return new FileInputStream(str);
            } catch (FileNotFoundException e2) {
                throw new RuntimeException(e2);
            }
        }

        public FileOp(String str, String str2) {
            super(str, str2);
        }

        public FileOp(String str, String str2, DatabaseOperation databaseOperation) {
            super(str, str2, databaseOperation);
        }
    }
}
