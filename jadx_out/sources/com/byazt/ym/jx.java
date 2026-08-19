package com.byazt.ym;

import android.content.Context;
import android.util.SparseArray;
import android.view.MotionEvent;
import com.byakv.z.SoftDecTool;
import com.byazt.gjx.eb;
import com.byazt.jz.d;
import com.byazt.jz.sz;
import com.byazt.pg.w;
import com.byazt.usq.j;
import java.util.function.Function;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1529, 30})
@ATSKeep
/* loaded from: classes3.dex */
public class jx implements com.byazt.pg.w, Function {
    public jx(com.byazt.he.hp hpVar) {
        hp(hpVar.hp());
    }

    private void hp(final w.l lVar) {
        eb.hp hpVarHp = new eb.hp(sz.getContext(), d.eb(), "7643").hp(true);
        hpVarHp.hp(new com.byazt.gjx.s() { // from class: com.byazt.ym.jx.2
            @Override // com.byazt.gjx.s
            public void hp(long j2, boolean z2) {
                lVar.hp(j2, z2);
            }

            @Override // com.byazt.gjx.s
            public void hp(String str, JSONObject jSONObject) {
                lVar.hp(str, jSONObject);
            }

            @Override // com.byazt.gjx.s
            public long hp() {
                return lVar.hp();
            }
        });
        com.byazt.gjx.a.hp(hpVarHp.hp());
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        switch (((Integer) sparseArray.get(0)).intValue()) {
            case -1:
                pglArmorCallApiCancelListener();
                return null;
            case 1:
                return encrypt((byte[]) sparseArray.get(1));
            case 2:
                return Boolean.valueOf(getArmorLoadStatus());
            case 3:
                return decryptWithCBC((String) sparseArray.get(1));
            case 4:
                return decrypt((byte[]) sparseArray.get(1));
            case 5:
                return Boolean.valueOf(signVerifyMD5withRSA((String) sparseArray.get(1), (String) sparseArray.get(2)));
            case 6:
                return Boolean.valueOf(detectHostLocalIp((String) sparseArray.get(1)));
            case 7:
                return getSoftChara();
            case 8:
                pglArmorCallApi2c((MotionEvent) sparseArray.get(1));
                return null;
            case 9:
                return pglArmorCallApi2ccc((String) sparseArray.get(1), ((Long) sparseArray.get(2)).longValue(), ((Integer) sparseArray.get(3)).intValue(), ((Boolean) sparseArray.get(4)).booleanValue());
            case 10:
                pglArmorCallApi2src(((Long) sparseArray.get(1)).longValue(), ((Integer) sparseArray.get(2)).intValue());
                break;
            case 11:
                return pglArmorCallApi2getProperty((String) sparseArray.get(1), (String) sparseArray.get(2));
            case 12:
                return getArmorContext();
            case 13:
                return getArchEnv();
            case 15:
                softDecTool2ua(((Double) sparseArray.get(1)).doubleValue(), ((Long) sparseArray.get(2)).longValue());
                break;
            case 16:
                Object aVar = sparseArray.get(1);
                if (aVar != null) {
                    aVar = new com.byazt.pg.a((Function) aVar);
                }
                setHARSensorCallBack((w.hp) aVar);
                break;
            case 17:
                return Boolean.valueOf(registerHarSensors());
            case 20:
                updateScreenStatus((String) sparseArray.get(1));
                break;
            case 21:
                updateNetworkStatus(((Integer) sparseArray.get(1)).intValue());
                break;
            case 22:
                return Integer.valueOf(getSpecificArmorLoadStatus());
            case 23:
                updateHARSettings((JSONObject) sparseArray.get(1));
                break;
            case 24:
                initPglCryptUtils();
                break;
            case 25:
                return Boolean.valueOf(enableSetHARSensorCallBack(((Integer) sparseArray.get(1)).intValue()));
            case 27:
                return encryptBody((JSONObject) sparseArray.get(1));
            case 28:
                return decryptAESWithCBC((String) sparseArray.get(1));
            case 29:
                return encryptAESWithCBC((String) sparseArray.get(1));
        }
        return null;
    }

    @Override // com.byazt.pg.w
    public byte[] decrypt(byte[] bArr) {
        return com.byazt.gjx.q.hp().l(bArr);
    }

    @Override // com.byazt.pg.w
    public String decryptAESWithCBC(String str) {
        return com.byazt.ymw.hp.jx(str);
    }

    @Override // com.byazt.pg.w
    public String decryptWithCBC(String str) {
        return com.byazt.gjx.q.hp().hp(str);
    }

    @Override // com.byazt.pg.w
    public boolean detectHostLocalIp(String str) {
        return com.byazt.gjx.j.hp(str);
    }

    @Override // com.byazt.pg.w
    public boolean enableSetHARSensorCallBack(int i2) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean zL = com.byazt.usq.w.hp().l();
        boolean z2 = ((long) (i2 - 1)) % com.byazt.usq.w.hp().w() == 0;
        boolean z3 = jCurrentTimeMillis - com.byazt.usq.j.hp().j() > com.byazt.usq.w.hp().j();
        boolean zJx = com.byazt.usq.j.hp().jx();
        com.byazt.usq.w.hp();
        com.byazt.usq.w.hp();
        com.byazt.usq.w.hp();
        com.byazt.usq.w.hp();
        boolean z4 = SoftDecTool.f17941f;
        return z2 && z3 && zL && !zJx;
    }

    @Override // com.byazt.pg.w
    public byte[] encrypt(byte[] bArr) {
        return com.byazt.gjx.q.hp().hp(bArr);
    }

    @Override // com.byazt.pg.w
    public String encryptAESWithCBC(String str) {
        return com.byazt.ymw.hp.l(str);
    }

    @Override // com.byazt.pg.w
    public String encryptBody(JSONObject jSONObject) {
        JSONObject jSONObjectHp = com.byazt.gjx.q.hp().hp(jSONObject);
        return jSONObjectHp != null ? jSONObjectHp.toString() : "";
    }

    @Override // com.byazt.pg.w
    public String getArchEnv() {
        return com.byazt.gjx.a.l();
    }

    @Override // com.byazt.pg.w
    public Context getArmorContext() {
        return com.byazt.gjx.a.jx();
    }

    @Override // com.byazt.pg.w
    public boolean getArmorLoadStatus() {
        return com.byazt.gjx.q.l();
    }

    @Override // com.byazt.pg.w
    public String getSoftChara() {
        return com.byazt.gjx.a.hp(com.byazt.zn.jx.hp);
    }

    @Override // com.byazt.pg.w
    public int getSpecificArmorLoadStatus() {
        return com.byazt.gjx.q.jx();
    }

    @Override // com.byazt.pg.w
    public void initPglCryptUtils() {
        com.byazt.gjx.q.hp();
    }

    @Override // com.byazt.pg.w
    public void pglArmorCallApi2c(MotionEvent motionEvent) {
        com.byazt.gjx.a.hp(motionEvent);
    }

    @Override // com.byazt.pg.w
    public String pglArmorCallApi2ccc(String str, long j2, int i2, boolean z2) {
        return com.byazt.gjx.a.hp(str, j2, i2, z2);
    }

    @Override // com.byazt.pg.w
    public String pglArmorCallApi2getProperty(String str, String str2) {
        return com.byazt.gjx.a.hp(str, str2);
    }

    @Override // com.byazt.pg.w
    public void pglArmorCallApi2src(long j2, int i2) {
        com.byazt.gjx.a.hp(j2, i2);
    }

    public void pglArmorCallApiCancelListener() {
        com.byazt.gjx.a.hp();
    }

    @Override // com.byazt.pg.w
    public boolean registerHarSensors() {
        return com.byazt.usq.j.hp().l();
    }

    @Override // com.byazt.pg.w
    public void setHARSensorCallBack(final w.hp hpVar) {
        com.byazt.usq.j.hp().hp(new j.hp() { // from class: com.byazt.ym.jx.1
            @Override // com.byazt.usq.j.hp
            public void hp(JSONObject jSONObject) {
                hpVar.reportSensorData(jSONObject);
            }
        });
    }

    @Override // com.byazt.pg.w
    public boolean signVerifyMD5withRSA(String str, String str2) throws Exception {
        return com.byazt.gjx.j.hp(str, str2);
    }

    @Override // com.byazt.pg.w
    public void softDecTool2ua(double d2, long j2) {
        SoftDecTool.ua(d2, j2);
        boolean z2 = SoftDecTool.f17941f;
    }

    @Override // com.byazt.pg.w
    public void updateHARSettings(JSONObject jSONObject) {
        com.byazt.usq.w.hp().hp(jSONObject);
    }

    @Override // com.byazt.pg.w
    public void updateNetworkStatus(int i2) {
        com.byazt.usq.l.hp().hp(i2);
    }

    @Override // com.byazt.pg.w
    public void updateScreenStatus(String str) {
        com.byazt.usq.l.hp().l(str);
    }
}
