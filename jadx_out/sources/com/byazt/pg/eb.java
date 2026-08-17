package com.byazt.pg;

import android.content.Context;
import android.util.SparseArray;
import android.view.MotionEvent;
import com.byazt.pg.w;
import com.byazt.ym.ATSKeep;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.function.Function;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CURRENT_DOWNLOAD_INDEX, 94})
@ATSKeep
/* loaded from: classes3.dex */
public class eb implements w, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile w f24383l;

    public eb(w wVar) {
        this.f24383l = wVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function function;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.f24383l != null ? this.f24383l : this.hp;
        }
        if (iIntValue == -4 && (function = (Function) sparseArray.get(1)) != null) {
            this.f24383l = null;
            this.hp = function;
        }
        return null;
    }

    @Override // com.byazt.pg.w
    public byte[] decrypt(byte[] bArr) {
        if (this.f24383l != null) {
            return this.f24383l.decrypt(bArr);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        sparseArray.put(1, bArr);
        return (byte[]) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.w
    public String decryptAESWithCBC(String str) {
        if (this.f24383l != null) {
            return this.f24383l.decryptAESWithCBC(str);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 28);
        sparseArray.put(1, str);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.w
    public String decryptWithCBC(String str) {
        if (this.f24383l != null) {
            return this.f24383l.decryptWithCBC(str);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        sparseArray.put(1, str);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.w
    public boolean detectHostLocalIp(String str) {
        if (this.f24383l != null) {
            return this.f24383l.detectHostLocalIp(str);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 6);
        sparseArray.put(1, str);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.pg.w
    public boolean enableSetHARSensorCallBack(int i2) {
        if (this.f24383l != null) {
            return this.f24383l.enableSetHARSensorCallBack(i2);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 25);
        sparseArray.put(1, Integer.valueOf(i2));
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.pg.w
    public byte[] encrypt(byte[] bArr) {
        if (this.f24383l != null) {
            return this.f24383l.encrypt(bArr);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, bArr);
        return (byte[]) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.w
    public String encryptAESWithCBC(String str) {
        if (this.f24383l != null) {
            return this.f24383l.encryptAESWithCBC(str);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 29);
        sparseArray.put(1, str);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.w
    public String encryptBody(JSONObject jSONObject) {
        if (this.f24383l != null) {
            return this.f24383l.encryptBody(jSONObject);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 27);
        sparseArray.put(1, jSONObject);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.w
    public String getArchEnv() {
        if (this.f24383l != null) {
            return this.f24383l.getArchEnv();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 13);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.w
    public Context getArmorContext() {
        if (this.f24383l != null) {
            return this.f24383l.getArmorContext();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 12);
        return (Context) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.w
    public boolean getArmorLoadStatus() {
        if (this.f24383l != null) {
            return this.f24383l.getArmorLoadStatus();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.pg.w
    public String getSoftChara() {
        if (this.f24383l != null) {
            return this.f24383l.getSoftChara();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 7);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.w
    public int getSpecificArmorLoadStatus() {
        if (this.f24383l != null) {
            return this.f24383l.getSpecificArmorLoadStatus();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 22);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.pg.w
    public void initPglCryptUtils() {
        if (this.f24383l != null) {
            this.f24383l.initPglCryptUtils();
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 24);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.w
    public void pglArmorCallApi2c(MotionEvent motionEvent) {
        if (this.f24383l != null) {
            this.f24383l.pglArmorCallApi2c(motionEvent);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 8);
        sparseArray.put(1, motionEvent);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.w
    public String pglArmorCallApi2ccc(String str, long j2, int i2, boolean z2) {
        if (this.f24383l != null) {
            return this.f24383l.pglArmorCallApi2ccc(str, j2, i2, z2);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 9);
        sparseArray.put(1, str);
        sparseArray.put(2, Long.valueOf(j2));
        sparseArray.put(3, Integer.valueOf(i2));
        sparseArray.put(4, Boolean.valueOf(z2));
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.w
    public String pglArmorCallApi2getProperty(String str, String str2) {
        if (this.f24383l != null) {
            return this.f24383l.pglArmorCallApi2getProperty(str, str2);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 11);
        sparseArray.put(1, str);
        sparseArray.put(2, str2);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.w
    public void pglArmorCallApi2src(long j2, int i2) {
        if (this.f24383l != null) {
            this.f24383l.pglArmorCallApi2src(j2, i2);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 10);
        sparseArray.put(1, Long.valueOf(j2));
        sparseArray.put(2, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.w
    public boolean registerHarSensors() {
        if (this.f24383l != null) {
            return this.f24383l.registerHarSensors();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 17);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.pg.w
    public void setHARSensorCallBack(w.hp hpVar) {
        if (this.f24383l != null) {
            this.f24383l.setHARSensorCallBack(hpVar);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 16);
        if (hpVar != null) {
            hpVar = new a(hpVar);
        }
        sparseArray.put(1, hpVar);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.w
    public boolean signVerifyMD5withRSA(String str, String str2) {
        if (this.f24383l != null) {
            return this.f24383l.signVerifyMD5withRSA(str, str2);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        sparseArray.put(1, str);
        sparseArray.put(2, str2);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.pg.w
    public void softDecTool2ua(double d2, long j2) {
        if (this.f24383l != null) {
            this.f24383l.softDecTool2ua(d2, j2);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 15);
        sparseArray.put(1, Double.valueOf(d2));
        sparseArray.put(2, Long.valueOf(j2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.w
    public void updateHARSettings(JSONObject jSONObject) {
        if (this.f24383l != null) {
            this.f24383l.updateHARSettings(jSONObject);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 23);
        sparseArray.put(1, jSONObject);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.w
    public void updateNetworkStatus(int i2) {
        if (this.f24383l != null) {
            this.f24383l.updateNetworkStatus(i2);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 21);
        sparseArray.put(1, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.w
    public void updateScreenStatus(String str) {
        if (this.f24383l != null) {
            this.f24383l.updateScreenStatus(str);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 20);
        sparseArray.put(1, str);
        this.hp.apply(sparseArray);
    }

    public eb(Function function) {
        this.hp = function;
    }
}
