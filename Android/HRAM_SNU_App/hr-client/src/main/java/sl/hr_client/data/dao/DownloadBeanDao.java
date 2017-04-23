package sl.hr_client.data.dao;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;

import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.internal.DaoConfig;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;

import sl.hr_client.data.bean.DownloadBean;

// THIS CODE IS GENERATED BY greenDAO, DO NOT EDIT.
/** 
 * DAO for table "DOWNLOAD_BEAN".
*/
public class DownloadBeanDao extends AbstractDao<DownloadBean, String> {

    public static final String TABLENAME = "DOWNLOAD_BEAN";

    /**
     * Properties of entity DownloadBean.<br/>
     * Can be used for QueryBuilder and for referencing column names.
    */
    public static class Properties {
        public final static Property DownloadID = new Property(0, String.class, "downloadID", true, "DOWNLOAD_ID");
        public final static Property ULoginName = new Property(1, String.class, "uLoginName", false, "U_LOGIN_NAME");
        public final static Property UUserName = new Property(2, String.class, "uUserName", false, "U_USER_NAME");
        public final static Property DmTitle = new Property(3, String.class, "dmTitle", false, "DM_TITLE");
        public final static Property DmTypeID = new Property(4, String.class, "dmTypeID", false, "DM_TYPE_ID");
        public final static Property DmTypeValue = new Property(5, String.class, "dmTypeValue", false, "DM_TYPE_VALUE");
        public final static Property DmFileURL = new Property(6, String.class, "dmFileURL", false, "DM_FILE_URL");
        public final static Property DmDownloadNum = new Property(7, int.class, "dmDownloadNum", false, "DM_DOWNLOAD_NUM");
        public final static Property DmUploadTime = new Property(8, String.class, "dmUploadTime", false, "DM_UPLOAD_TIME");
    };


    public DownloadBeanDao(DaoConfig config) {
        super(config);
    }
    
    public DownloadBeanDao(DaoConfig config, DaoSession daoSession) {
        super(config, daoSession);
    }

    /** Creates the underlying database table. */
    public static void createTable(Database db, boolean ifNotExists) {
        String constraint = ifNotExists? "IF NOT EXISTS ": "";
        db.execSQL("CREATE TABLE " + constraint + "\"DOWNLOAD_BEAN\" (" + //
                "\"DOWNLOAD_ID\" TEXT PRIMARY KEY NOT NULL ," + // 0: downloadID
                "\"U_LOGIN_NAME\" TEXT," + // 1: uLoginName
                "\"U_USER_NAME\" TEXT," + // 2: uUserName
                "\"DM_TITLE\" TEXT," + // 3: dmTitle
                "\"DM_TYPE_ID\" TEXT," + // 4: dmTypeID
                "\"DM_TYPE_VALUE\" TEXT," + // 5: dmTypeValue
                "\"DM_FILE_URL\" TEXT," + // 6: dmFileURL
                "\"DM_DOWNLOAD_NUM\" INTEGER NOT NULL ," + // 7: dmDownloadNum
                "\"DM_UPLOAD_TIME\" TEXT);"); // 8: dmUploadTime
    }

    /** Drops the underlying database table. */
    public static void dropTable(Database db, boolean ifExists) {
        String sql = "DROP TABLE " + (ifExists ? "IF EXISTS " : "") + "\"DOWNLOAD_BEAN\"";
        db.execSQL(sql);
    }

    @Override
    protected final void bindValues(DatabaseStatement stmt, DownloadBean entity) {
        stmt.clearBindings();
 
        String downloadID = entity.getDownloadID();
        if (downloadID != null) {
            stmt.bindString(1, downloadID);
        }
 
        String uLoginName = entity.getULoginName();
        if (uLoginName != null) {
            stmt.bindString(2, uLoginName);
        }
 
        String uUserName = entity.getUUserName();
        if (uUserName != null) {
            stmt.bindString(3, uUserName);
        }
 
        String dmTitle = entity.getDmTitle();
        if (dmTitle != null) {
            stmt.bindString(4, dmTitle);
        }
 
        String dmTypeID = entity.getDmTypeID();
        if (dmTypeID != null) {
            stmt.bindString(5, dmTypeID);
        }
 
        String dmTypeValue = entity.getDmTypeValue();
        if (dmTypeValue != null) {
            stmt.bindString(6, dmTypeValue);
        }
 
        String dmFileURL = entity.getDmFileURL();
        if (dmFileURL != null) {
            stmt.bindString(7, dmFileURL);
        }
        stmt.bindLong(8, entity.getDmDownloadNum());
 
        String dmUploadTime = entity.getDmUploadTime();
        if (dmUploadTime != null) {
            stmt.bindString(9, dmUploadTime);
        }
    }

    @Override
    protected final void bindValues(SQLiteStatement stmt, DownloadBean entity) {
        stmt.clearBindings();
 
        String downloadID = entity.getDownloadID();
        if (downloadID != null) {
            stmt.bindString(1, downloadID);
        }
 
        String uLoginName = entity.getULoginName();
        if (uLoginName != null) {
            stmt.bindString(2, uLoginName);
        }
 
        String uUserName = entity.getUUserName();
        if (uUserName != null) {
            stmt.bindString(3, uUserName);
        }
 
        String dmTitle = entity.getDmTitle();
        if (dmTitle != null) {
            stmt.bindString(4, dmTitle);
        }
 
        String dmTypeID = entity.getDmTypeID();
        if (dmTypeID != null) {
            stmt.bindString(5, dmTypeID);
        }
 
        String dmTypeValue = entity.getDmTypeValue();
        if (dmTypeValue != null) {
            stmt.bindString(6, dmTypeValue);
        }
 
        String dmFileURL = entity.getDmFileURL();
        if (dmFileURL != null) {
            stmt.bindString(7, dmFileURL);
        }
        stmt.bindLong(8, entity.getDmDownloadNum());
 
        String dmUploadTime = entity.getDmUploadTime();
        if (dmUploadTime != null) {
            stmt.bindString(9, dmUploadTime);
        }
    }

    @Override
    public String readKey(Cursor cursor, int offset) {
        return cursor.isNull(offset + 0) ? null : cursor.getString(offset + 0);
    }    

    @Override
    public DownloadBean readEntity(Cursor cursor, int offset) {
        DownloadBean entity = new DownloadBean( //
            cursor.isNull(offset + 0) ? null : cursor.getString(offset + 0), // downloadID
            cursor.isNull(offset + 1) ? null : cursor.getString(offset + 1), // uLoginName
            cursor.isNull(offset + 2) ? null : cursor.getString(offset + 2), // uUserName
            cursor.isNull(offset + 3) ? null : cursor.getString(offset + 3), // dmTitle
            cursor.isNull(offset + 4) ? null : cursor.getString(offset + 4), // dmTypeID
            cursor.isNull(offset + 5) ? null : cursor.getString(offset + 5), // dmTypeValue
            cursor.isNull(offset + 6) ? null : cursor.getString(offset + 6), // dmFileURL
            cursor.getInt(offset + 7), // dmDownloadNum
            cursor.isNull(offset + 8) ? null : cursor.getString(offset + 8) // dmUploadTime
        );
        return entity;
    }
     
    @Override
    public void readEntity(Cursor cursor, DownloadBean entity, int offset) {
        entity.setDownloadID(cursor.isNull(offset + 0) ? null : cursor.getString(offset + 0));
        entity.setULoginName(cursor.isNull(offset + 1) ? null : cursor.getString(offset + 1));
        entity.setUUserName(cursor.isNull(offset + 2) ? null : cursor.getString(offset + 2));
        entity.setDmTitle(cursor.isNull(offset + 3) ? null : cursor.getString(offset + 3));
        entity.setDmTypeID(cursor.isNull(offset + 4) ? null : cursor.getString(offset + 4));
        entity.setDmTypeValue(cursor.isNull(offset + 5) ? null : cursor.getString(offset + 5));
        entity.setDmFileURL(cursor.isNull(offset + 6) ? null : cursor.getString(offset + 6));
        entity.setDmDownloadNum(cursor.getInt(offset + 7));
        entity.setDmUploadTime(cursor.isNull(offset + 8) ? null : cursor.getString(offset + 8));
     }
    
    @Override
    protected final String updateKeyAfterInsert(DownloadBean entity, long rowId) {
        return entity.getDownloadID();
    }
    
    @Override
    public String getKey(DownloadBean entity) {
        if(entity != null) {
            return entity.getDownloadID();
        } else {
            return null;
        }
    }

    @Override
    protected final boolean isEntityUpdateable() {
        return true;
    }
    
}
