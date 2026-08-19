package org.seamless.util.dbunit;

import java.sql.SQLException;
import org.dbunit.database.DatabaseConfig;
import org.dbunit.database.IDatabaseConnection;
import org.dbunit.dataset.datatype.DataType;
import org.dbunit.dataset.datatype.DataTypeException;
import org.dbunit.dataset.datatype.DefaultDataTypeFactory;

/* loaded from: classes5.dex */
public abstract class H2DBUnitOperations extends DBUnitOperations {
    @Override // org.seamless.util.dbunit.DBUnitOperations
    public void disableReferentialIntegrity(IDatabaseConnection iDatabaseConnection) throws SQLException {
        try {
            iDatabaseConnection.getConnection().prepareStatement("set referential_integrity FALSE").execute();
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // org.seamless.util.dbunit.DBUnitOperations
    public void editConfig(DatabaseConfig databaseConfig) {
        super.editConfig(databaseConfig);
        databaseConfig.setProperty("http://www.dbunit.org/properties/datatypeFactory", new DefaultDataTypeFactory() { // from class: org.seamless.util.dbunit.H2DBUnitOperations.1
            public DataType createDataType(int i2, String str) throws DataTypeException {
                return i2 == 16 ? DataType.BOOLEAN : super.createDataType(i2, str);
            }
        });
    }

    @Override // org.seamless.util.dbunit.DBUnitOperations
    public void enableReferentialIntegrity(IDatabaseConnection iDatabaseConnection) throws SQLException {
        try {
            iDatabaseConnection.getConnection().prepareStatement("set referential_integrity TRUE").execute();
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }
}
