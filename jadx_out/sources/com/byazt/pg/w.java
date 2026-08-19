package com.byazt.pg;

import android.content.Context;
import android.view.MotionEvent;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public interface w {

    public interface hp {
        void reportSensorData(JSONObject jSONObject);
    }

    public interface l {
        long hp();

        void hp(long j2, boolean z2);

        void hp(String str, JSONObject jSONObject);
    }

    byte[] decrypt(byte[] bArr);

    String decryptAESWithCBC(String str);

    String decryptWithCBC(String str);

    boolean detectHostLocalIp(String str);

    boolean enableSetHARSensorCallBack(int i2);

    byte[] encrypt(byte[] bArr);

    String encryptAESWithCBC(String str);

    String encryptBody(JSONObject jSONObject);

    String getArchEnv();

    Context getArmorContext();

    boolean getArmorLoadStatus();

    String getSoftChara();

    int getSpecificArmorLoadStatus();

    void initPglCryptUtils();

    void pglArmorCallApi2c(MotionEvent motionEvent);

    String pglArmorCallApi2ccc(String str, long j2, int i2, boolean z2);

    String pglArmorCallApi2getProperty(String str, String str2);

    void pglArmorCallApi2src(long j2, int i2);

    boolean registerHarSensors();

    void setHARSensorCallBack(hp hpVar);

    boolean signVerifyMD5withRSA(String str, String str2) throws Exception;

    void softDecTool2ua(double d2, long j2);

    void updateHARSettings(JSONObject jSONObject);

    void updateNetworkStatus(int i2);

    void updateScreenStatus(String str);
}
