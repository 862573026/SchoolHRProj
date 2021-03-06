package sl.hr_client.data.dao;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;

import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.internal.DaoConfig;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;

import sl.hr_client.data.bean.MemberBean;

// THIS CODE IS GENERATED BY greenDAO, DO NOT EDIT.
/** 
 * DAO for table "MEMBER_BEAN".
*/
public class MemberBeanDao extends AbstractDao<MemberBean, String> {

    public static final String TABLENAME = "MEMBER_BEAN";

    /**
     * Properties of entity MemberBean.<br/>
     * Can be used for QueryBuilder and for referencing column names.
    */
    public static class Properties {
        public final static Property MemberID = new Property(0, String.class, "memberID", true, "MEMBER_ID");
        public final static Property ULoginName = new Property(1, String.class, "uLoginName", false, "U_LOGIN_NAME");
        public final static Property UUserName = new Property(2, String.class, "uUserName", false, "U_USER_NAME");
        public final static Property MReviewResultID = new Property(3, String.class, "mReviewResultID", false, "M_REVIEW_RESULT_ID");
        public final static Property MReviewResultValue = new Property(4, String.class, "mReviewResultValue", false, "M_REVIEW_RESULT_VALUE");
        public final static Property MApplyTime = new Property(5, String.class, "mApplyTime", false, "M_APPLY_TIME");
        public final static Property MName = new Property(6, String.class, "mName", false, "M_NAME");
        public final static Property MTypeID = new Property(7, String.class, "mTypeID", false, "M_TYPE_ID");
        public final static Property MTypeValue = new Property(8, String.class, "mTypeValue", false, "M_TYPE_VALUE");
        public final static Property MOrganizationCode = new Property(9, String.class, "mOrganizationCode", false, "M_ORGANIZATION_CODE");
        public final static Property MAddress = new Property(10, String.class, "mAddress", false, "M_ADDRESS");
        public final static Property MCorporateName = new Property(11, String.class, "mCorporateName", false, "M_CORPORATE_NAME");
        public final static Property MIDCardNo = new Property(12, String.class, "mIDCardNo", false, "M_IDCARD_NO");
        public final static Property MContacts = new Property(13, String.class, "mContacts", false, "M_CONTACTS");
        public final static Property MContactsPhone = new Property(14, String.class, "mContactsPhone", false, "M_CONTACTS_PHONE");
        public final static Property MSummary = new Property(15, String.class, "mSummary", false, "M_SUMMARY");
        public final static Property MImgURL = new Property(16, String.class, "mImgURL", false, "M_IMG_URL");
        public final static Property MURL = new Property(17, String.class, "mURL", false, "M_URL");
    };


    public MemberBeanDao(DaoConfig config) {
        super(config);
    }
    
    public MemberBeanDao(DaoConfig config, DaoSession daoSession) {
        super(config, daoSession);
    }

    /** Creates the underlying database table. */
    public static void createTable(Database db, boolean ifNotExists) {
        String constraint = ifNotExists? "IF NOT EXISTS ": "";
        db.execSQL("CREATE TABLE " + constraint + "\"MEMBER_BEAN\" (" + //
                "\"MEMBER_ID\" TEXT PRIMARY KEY NOT NULL ," + // 0: memberID
                "\"U_LOGIN_NAME\" TEXT," + // 1: uLoginName
                "\"U_USER_NAME\" TEXT," + // 2: uUserName
                "\"M_REVIEW_RESULT_ID\" TEXT," + // 3: mReviewResultID
                "\"M_REVIEW_RESULT_VALUE\" TEXT," + // 4: mReviewResultValue
                "\"M_APPLY_TIME\" TEXT," + // 5: mApplyTime
                "\"M_NAME\" TEXT," + // 6: mName
                "\"M_TYPE_ID\" TEXT," + // 7: mTypeID
                "\"M_TYPE_VALUE\" TEXT," + // 8: mTypeValue
                "\"M_ORGANIZATION_CODE\" TEXT," + // 9: mOrganizationCode
                "\"M_ADDRESS\" TEXT," + // 10: mAddress
                "\"M_CORPORATE_NAME\" TEXT," + // 11: mCorporateName
                "\"M_IDCARD_NO\" TEXT," + // 12: mIDCardNo
                "\"M_CONTACTS\" TEXT," + // 13: mContacts
                "\"M_CONTACTS_PHONE\" TEXT," + // 14: mContactsPhone
                "\"M_SUMMARY\" TEXT," + // 15: mSummary
                "\"M_IMG_URL\" TEXT," + // 16: mImgURL
                "\"M_URL\" TEXT);"); // 17: mURL
    }

    /** Drops the underlying database table. */
    public static void dropTable(Database db, boolean ifExists) {
        String sql = "DROP TABLE " + (ifExists ? "IF EXISTS " : "") + "\"MEMBER_BEAN\"";
        db.execSQL(sql);
    }

    @Override
    protected final void bindValues(DatabaseStatement stmt, MemberBean entity) {
        stmt.clearBindings();
 
        String memberID = entity.getMemberID();
        if (memberID != null) {
            stmt.bindString(1, memberID);
        }
 
        String uLoginName = entity.getULoginName();
        if (uLoginName != null) {
            stmt.bindString(2, uLoginName);
        }
 
        String uUserName = entity.getUUserName();
        if (uUserName != null) {
            stmt.bindString(3, uUserName);
        }
 
        String mReviewResultID = entity.getMReviewResultID();
        if (mReviewResultID != null) {
            stmt.bindString(4, mReviewResultID);
        }
 
        String mReviewResultValue = entity.getMReviewResultValue();
        if (mReviewResultValue != null) {
            stmt.bindString(5, mReviewResultValue);
        }
 
        String mApplyTime = entity.getMApplyTime();
        if (mApplyTime != null) {
            stmt.bindString(6, mApplyTime);
        }
 
        String mName = entity.getMName();
        if (mName != null) {
            stmt.bindString(7, mName);
        }
 
        String mTypeID = entity.getMTypeID();
        if (mTypeID != null) {
            stmt.bindString(8, mTypeID);
        }
 
        String mTypeValue = entity.getMTypeValue();
        if (mTypeValue != null) {
            stmt.bindString(9, mTypeValue);
        }
 
        String mOrganizationCode = entity.getMOrganizationCode();
        if (mOrganizationCode != null) {
            stmt.bindString(10, mOrganizationCode);
        }
 
        String mAddress = entity.getMAddress();
        if (mAddress != null) {
            stmt.bindString(11, mAddress);
        }
 
        String mCorporateName = entity.getMCorporateName();
        if (mCorporateName != null) {
            stmt.bindString(12, mCorporateName);
        }
 
        String mIDCardNo = entity.getMIDCardNo();
        if (mIDCardNo != null) {
            stmt.bindString(13, mIDCardNo);
        }
 
        String mContacts = entity.getMContacts();
        if (mContacts != null) {
            stmt.bindString(14, mContacts);
        }
 
        String mContactsPhone = entity.getMContactsPhone();
        if (mContactsPhone != null) {
            stmt.bindString(15, mContactsPhone);
        }
 
        String mSummary = entity.getMSummary();
        if (mSummary != null) {
            stmt.bindString(16, mSummary);
        }
 
        String mImgURL = entity.getMImgURL();
        if (mImgURL != null) {
            stmt.bindString(17, mImgURL);
        }
 
        String mURL = entity.getMURL();
        if (mURL != null) {
            stmt.bindString(18, mURL);
        }
    }

    @Override
    protected final void bindValues(SQLiteStatement stmt, MemberBean entity) {
        stmt.clearBindings();
 
        String memberID = entity.getMemberID();
        if (memberID != null) {
            stmt.bindString(1, memberID);
        }
 
        String uLoginName = entity.getULoginName();
        if (uLoginName != null) {
            stmt.bindString(2, uLoginName);
        }
 
        String uUserName = entity.getUUserName();
        if (uUserName != null) {
            stmt.bindString(3, uUserName);
        }
 
        String mReviewResultID = entity.getMReviewResultID();
        if (mReviewResultID != null) {
            stmt.bindString(4, mReviewResultID);
        }
 
        String mReviewResultValue = entity.getMReviewResultValue();
        if (mReviewResultValue != null) {
            stmt.bindString(5, mReviewResultValue);
        }
 
        String mApplyTime = entity.getMApplyTime();
        if (mApplyTime != null) {
            stmt.bindString(6, mApplyTime);
        }
 
        String mName = entity.getMName();
        if (mName != null) {
            stmt.bindString(7, mName);
        }
 
        String mTypeID = entity.getMTypeID();
        if (mTypeID != null) {
            stmt.bindString(8, mTypeID);
        }
 
        String mTypeValue = entity.getMTypeValue();
        if (mTypeValue != null) {
            stmt.bindString(9, mTypeValue);
        }
 
        String mOrganizationCode = entity.getMOrganizationCode();
        if (mOrganizationCode != null) {
            stmt.bindString(10, mOrganizationCode);
        }
 
        String mAddress = entity.getMAddress();
        if (mAddress != null) {
            stmt.bindString(11, mAddress);
        }
 
        String mCorporateName = entity.getMCorporateName();
        if (mCorporateName != null) {
            stmt.bindString(12, mCorporateName);
        }
 
        String mIDCardNo = entity.getMIDCardNo();
        if (mIDCardNo != null) {
            stmt.bindString(13, mIDCardNo);
        }
 
        String mContacts = entity.getMContacts();
        if (mContacts != null) {
            stmt.bindString(14, mContacts);
        }
 
        String mContactsPhone = entity.getMContactsPhone();
        if (mContactsPhone != null) {
            stmt.bindString(15, mContactsPhone);
        }
 
        String mSummary = entity.getMSummary();
        if (mSummary != null) {
            stmt.bindString(16, mSummary);
        }
 
        String mImgURL = entity.getMImgURL();
        if (mImgURL != null) {
            stmt.bindString(17, mImgURL);
        }
 
        String mURL = entity.getMURL();
        if (mURL != null) {
            stmt.bindString(18, mURL);
        }
    }

    @Override
    public String readKey(Cursor cursor, int offset) {
        return cursor.isNull(offset + 0) ? null : cursor.getString(offset + 0);
    }    

    @Override
    public MemberBean readEntity(Cursor cursor, int offset) {
        MemberBean entity = new MemberBean( //
            cursor.isNull(offset + 0) ? null : cursor.getString(offset + 0), // memberID
            cursor.isNull(offset + 1) ? null : cursor.getString(offset + 1), // uLoginName
            cursor.isNull(offset + 2) ? null : cursor.getString(offset + 2), // uUserName
            cursor.isNull(offset + 3) ? null : cursor.getString(offset + 3), // mReviewResultID
            cursor.isNull(offset + 4) ? null : cursor.getString(offset + 4), // mReviewResultValue
            cursor.isNull(offset + 5) ? null : cursor.getString(offset + 5), // mApplyTime
            cursor.isNull(offset + 6) ? null : cursor.getString(offset + 6), // mName
            cursor.isNull(offset + 7) ? null : cursor.getString(offset + 7), // mTypeID
            cursor.isNull(offset + 8) ? null : cursor.getString(offset + 8), // mTypeValue
            cursor.isNull(offset + 9) ? null : cursor.getString(offset + 9), // mOrganizationCode
            cursor.isNull(offset + 10) ? null : cursor.getString(offset + 10), // mAddress
            cursor.isNull(offset + 11) ? null : cursor.getString(offset + 11), // mCorporateName
            cursor.isNull(offset + 12) ? null : cursor.getString(offset + 12), // mIDCardNo
            cursor.isNull(offset + 13) ? null : cursor.getString(offset + 13), // mContacts
            cursor.isNull(offset + 14) ? null : cursor.getString(offset + 14), // mContactsPhone
            cursor.isNull(offset + 15) ? null : cursor.getString(offset + 15), // mSummary
            cursor.isNull(offset + 16) ? null : cursor.getString(offset + 16), // mImgURL
            cursor.isNull(offset + 17) ? null : cursor.getString(offset + 17) // mURL
        );
        return entity;
    }
     
    @Override
    public void readEntity(Cursor cursor, MemberBean entity, int offset) {
        entity.setMemberID(cursor.isNull(offset + 0) ? null : cursor.getString(offset + 0));
        entity.setULoginName(cursor.isNull(offset + 1) ? null : cursor.getString(offset + 1));
        entity.setUUserName(cursor.isNull(offset + 2) ? null : cursor.getString(offset + 2));
        entity.setMReviewResultID(cursor.isNull(offset + 3) ? null : cursor.getString(offset + 3));
        entity.setMReviewResultValue(cursor.isNull(offset + 4) ? null : cursor.getString(offset + 4));
        entity.setMApplyTime(cursor.isNull(offset + 5) ? null : cursor.getString(offset + 5));
        entity.setMName(cursor.isNull(offset + 6) ? null : cursor.getString(offset + 6));
        entity.setMTypeID(cursor.isNull(offset + 7) ? null : cursor.getString(offset + 7));
        entity.setMTypeValue(cursor.isNull(offset + 8) ? null : cursor.getString(offset + 8));
        entity.setMOrganizationCode(cursor.isNull(offset + 9) ? null : cursor.getString(offset + 9));
        entity.setMAddress(cursor.isNull(offset + 10) ? null : cursor.getString(offset + 10));
        entity.setMCorporateName(cursor.isNull(offset + 11) ? null : cursor.getString(offset + 11));
        entity.setMIDCardNo(cursor.isNull(offset + 12) ? null : cursor.getString(offset + 12));
        entity.setMContacts(cursor.isNull(offset + 13) ? null : cursor.getString(offset + 13));
        entity.setMContactsPhone(cursor.isNull(offset + 14) ? null : cursor.getString(offset + 14));
        entity.setMSummary(cursor.isNull(offset + 15) ? null : cursor.getString(offset + 15));
        entity.setMImgURL(cursor.isNull(offset + 16) ? null : cursor.getString(offset + 16));
        entity.setMURL(cursor.isNull(offset + 17) ? null : cursor.getString(offset + 17));
     }
    
    @Override
    protected final String updateKeyAfterInsert(MemberBean entity, long rowId) {
        return entity.getMemberID();
    }
    
    @Override
    public String getKey(MemberBean entity) {
        if(entity != null) {
            return entity.getMemberID();
        } else {
            return null;
        }
    }

    @Override
    protected final boolean isEntityUpdateable() {
        return true;
    }
    
}
