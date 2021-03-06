package sl.hr_client.data.dao;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;

import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.internal.DaoConfig;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;

import sl.hr_client.data.bean.UserBean;

// THIS CODE IS GENERATED BY greenDAO, DO NOT EDIT.
/** 
 * DAO for table "USER_BEAN".
*/
public class UserBeanDao extends AbstractDao<UserBean, String> {

    public static final String TABLENAME = "USER_BEAN";

    /**
     * Properties of entity UserBean.<br/>
     * Can be used for QueryBuilder and for referencing column names.
    */
    public static class Properties {
        public final static Property UID = new Property(0, String.class, "uID", true, "U_ID");
        public final static Property ULoginStr = new Property(1, String.class, "uLoginStr", false, "U_LOGIN_STR");
        public final static Property ULoginTypeID = new Property(2, String.class, "uLoginTypeID", false, "U_LOGIN_TYPE_ID");
        public final static Property UUserName = new Property(3, String.class, "uUserName", false, "U_USER_NAME");
        public final static Property UPhone = new Property(4, String.class, "uPhone", false, "U_PHONE");
        public final static Property UMaiBox = new Property(5, String.class, "uMaiBox", false, "U_MAI_BOX");
        public final static Property UClientKey = new Property(6, String.class, "uClientKey", false, "U_CLIENT_KEY");
        public final static Property UToken = new Property(7, String.class, "uToken", false, "U_TOKEN");
        public final static Property UTokenActiveTime = new Property(8, String.class, "uTokenActiveTime", false, "U_TOKEN_ACTIVE_TIME");
        public final static Property UTokenExpiredTime = new Property(9, String.class, "uTokenExpiredTime", false, "U_TOKEN_EXPIRED_TIME");
    };


    public UserBeanDao(DaoConfig config) {
        super(config);
    }
    
    public UserBeanDao(DaoConfig config, DaoSession daoSession) {
        super(config, daoSession);
    }

    /** Creates the underlying database table. */
    public static void createTable(Database db, boolean ifNotExists) {
        String constraint = ifNotExists? "IF NOT EXISTS ": "";
        db.execSQL("CREATE TABLE " + constraint + "\"USER_BEAN\" (" + //
                "\"U_ID\" TEXT PRIMARY KEY NOT NULL ," + // 0: uID
                "\"U_LOGIN_STR\" TEXT," + // 1: uLoginStr
                "\"U_LOGIN_TYPE_ID\" TEXT," + // 2: uLoginTypeID
                "\"U_USER_NAME\" TEXT," + // 3: uUserName
                "\"U_PHONE\" TEXT," + // 4: uPhone
                "\"U_MAI_BOX\" TEXT," + // 5: uMaiBox
                "\"U_CLIENT_KEY\" TEXT," + // 6: uClientKey
                "\"U_TOKEN\" TEXT," + // 7: uToken
                "\"U_TOKEN_ACTIVE_TIME\" TEXT," + // 8: uTokenActiveTime
                "\"U_TOKEN_EXPIRED_TIME\" TEXT);"); // 9: uTokenExpiredTime
    }

    /** Drops the underlying database table. */
    public static void dropTable(Database db, boolean ifExists) {
        String sql = "DROP TABLE " + (ifExists ? "IF EXISTS " : "") + "\"USER_BEAN\"";
        db.execSQL(sql);
    }

    @Override
    protected final void bindValues(DatabaseStatement stmt, UserBean entity) {
        stmt.clearBindings();
 
        String uID = entity.getUID();
        if (uID != null) {
            stmt.bindString(1, uID);
        }
 
        String uLoginStr = entity.getULoginStr();
        if (uLoginStr != null) {
            stmt.bindString(2, uLoginStr);
        }
 
        String uLoginTypeID = entity.getULoginTypeID();
        if (uLoginTypeID != null) {
            stmt.bindString(3, uLoginTypeID);
        }
 
        String uUserName = entity.getUUserName();
        if (uUserName != null) {
            stmt.bindString(4, uUserName);
        }
 
        String uPhone = entity.getUPhone();
        if (uPhone != null) {
            stmt.bindString(5, uPhone);
        }
 
        String uMaiBox = entity.getUMaiBox();
        if (uMaiBox != null) {
            stmt.bindString(6, uMaiBox);
        }
 
        String uClientKey = entity.getUClientKey();
        if (uClientKey != null) {
            stmt.bindString(7, uClientKey);
        }
 
        String uToken = entity.getUToken();
        if (uToken != null) {
            stmt.bindString(8, uToken);
        }
 
        String uTokenActiveTime = entity.getUTokenActiveTime();
        if (uTokenActiveTime != null) {
            stmt.bindString(9, uTokenActiveTime);
        }
 
        String uTokenExpiredTime = entity.getUTokenExpiredTime();
        if (uTokenExpiredTime != null) {
            stmt.bindString(10, uTokenExpiredTime);
        }
    }

    @Override
    protected final void bindValues(SQLiteStatement stmt, UserBean entity) {
        stmt.clearBindings();
 
        String uID = entity.getUID();
        if (uID != null) {
            stmt.bindString(1, uID);
        }
 
        String uLoginStr = entity.getULoginStr();
        if (uLoginStr != null) {
            stmt.bindString(2, uLoginStr);
        }
 
        String uLoginTypeID = entity.getULoginTypeID();
        if (uLoginTypeID != null) {
            stmt.bindString(3, uLoginTypeID);
        }
 
        String uUserName = entity.getUUserName();
        if (uUserName != null) {
            stmt.bindString(4, uUserName);
        }
 
        String uPhone = entity.getUPhone();
        if (uPhone != null) {
            stmt.bindString(5, uPhone);
        }
 
        String uMaiBox = entity.getUMaiBox();
        if (uMaiBox != null) {
            stmt.bindString(6, uMaiBox);
        }
 
        String uClientKey = entity.getUClientKey();
        if (uClientKey != null) {
            stmt.bindString(7, uClientKey);
        }
 
        String uToken = entity.getUToken();
        if (uToken != null) {
            stmt.bindString(8, uToken);
        }
 
        String uTokenActiveTime = entity.getUTokenActiveTime();
        if (uTokenActiveTime != null) {
            stmt.bindString(9, uTokenActiveTime);
        }
 
        String uTokenExpiredTime = entity.getUTokenExpiredTime();
        if (uTokenExpiredTime != null) {
            stmt.bindString(10, uTokenExpiredTime);
        }
    }

    @Override
    public String readKey(Cursor cursor, int offset) {
        return cursor.isNull(offset + 0) ? null : cursor.getString(offset + 0);
    }    

    @Override
    public UserBean readEntity(Cursor cursor, int offset) {
        UserBean entity = new UserBean( //
            cursor.isNull(offset + 0) ? null : cursor.getString(offset + 0), // uID
            cursor.isNull(offset + 1) ? null : cursor.getString(offset + 1), // uLoginStr
            cursor.isNull(offset + 2) ? null : cursor.getString(offset + 2), // uLoginTypeID
            cursor.isNull(offset + 3) ? null : cursor.getString(offset + 3), // uUserName
            cursor.isNull(offset + 4) ? null : cursor.getString(offset + 4), // uPhone
            cursor.isNull(offset + 5) ? null : cursor.getString(offset + 5), // uMaiBox
            cursor.isNull(offset + 6) ? null : cursor.getString(offset + 6), // uClientKey
            cursor.isNull(offset + 7) ? null : cursor.getString(offset + 7), // uToken
            cursor.isNull(offset + 8) ? null : cursor.getString(offset + 8), // uTokenActiveTime
            cursor.isNull(offset + 9) ? null : cursor.getString(offset + 9) // uTokenExpiredTime
        );
        return entity;
    }
     
    @Override
    public void readEntity(Cursor cursor, UserBean entity, int offset) {
        entity.setUID(cursor.isNull(offset + 0) ? null : cursor.getString(offset + 0));
        entity.setULoginStr(cursor.isNull(offset + 1) ? null : cursor.getString(offset + 1));
        entity.setULoginTypeID(cursor.isNull(offset + 2) ? null : cursor.getString(offset + 2));
        entity.setUUserName(cursor.isNull(offset + 3) ? null : cursor.getString(offset + 3));
        entity.setUPhone(cursor.isNull(offset + 4) ? null : cursor.getString(offset + 4));
        entity.setUMaiBox(cursor.isNull(offset + 5) ? null : cursor.getString(offset + 5));
        entity.setUClientKey(cursor.isNull(offset + 6) ? null : cursor.getString(offset + 6));
        entity.setUToken(cursor.isNull(offset + 7) ? null : cursor.getString(offset + 7));
        entity.setUTokenActiveTime(cursor.isNull(offset + 8) ? null : cursor.getString(offset + 8));
        entity.setUTokenExpiredTime(cursor.isNull(offset + 9) ? null : cursor.getString(offset + 9));
     }
    
    @Override
    protected final String updateKeyAfterInsert(UserBean entity, long rowId) {
        return entity.getUID();
    }
    
    @Override
    public String getKey(UserBean entity) {
        if(entity != null) {
            return entity.getUID();
        } else {
            return null;
        }
    }

    @Override
    protected final boolean isEntityUpdateable() {
        return true;
    }
    
}
