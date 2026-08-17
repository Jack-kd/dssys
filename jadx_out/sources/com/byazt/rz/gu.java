package com.byazt.rz;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAppContextHolder;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.Iterator;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CURRENT_DOWNLOAD_INDEX, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes3.dex */
public class gu implements com.byazt.ye.e {
    public SharedPreferences hp;

    private SharedPreferences hp() {
        Context context = TTAppContextHolder.getContext();
        if (context != null && this.hp == null) {
            String string = l.l(context, l("09152a11360f011014022a1c2f1f3a1513070712"), 0).getString(l("00000000001815"), null);
            if (TextUtils.isEmpty(string)) {
                string = l("0a041b14330e3a1a090f");
            }
            SharedPreferences sharedPreferencesL = l.l(context, string, 0);
            this.hp = sharedPreferencesL;
            if (!sharedPreferencesL.getBoolean("0000000000060c1e0804011a30053a1d150b10", false)) {
                hp(l.l(context, l("0a041b14330e3a141f11142c3b0a1118251605"), 0), this.hp, "0000000000060c1e0804011a30053a1d150b10", true);
            }
        }
        return this.hp;
    }

    private String j(String str) {
        return (str == null || str.isEmpty()) ? "" : hp(hp(str.getBytes(), "zeus_key".getBytes()));
    }

    private byte[] jx(String str) {
        if (str == null || str.isEmpty()) {
            return new byte[0];
        }
        int length = str.length();
        if (length % 2 != 0) {
            str = "0" + str;
            length++;
        }
        byte[] bArr = new byte[length / 2];
        for (int i2 = 0; i2 < length; i2 += 2) {
            bArr[i2 / 2] = (byte) ((Character.digit(str.charAt(i2), 16) << 4) + Character.digit(str.charAt(i2 + 1), 16));
        }
        return bArr;
    }

    @Override // com.byazt.ye.e
    public String l(String str, String str2) {
        SharedPreferences sharedPreferencesHp = hp();
        return sharedPreferencesHp != null ? sharedPreferencesHp.getString(str, str2) : str2;
    }

    @Override // com.byazt.ye.e
    public void l(String str, int i2) {
        SharedPreferences sharedPreferencesHp = hp();
        if (sharedPreferencesHp != null) {
            sharedPreferencesHp.edit().putInt(str, i2).apply();
        }
    }

    @Override // com.byazt.ye.e
    public boolean l(String str, boolean z2) {
        SharedPreferences sharedPreferencesHp = hp();
        return sharedPreferencesHp != null ? sharedPreferencesHp.getBoolean(str, z2) : z2;
    }

    private String l(String str) {
        return new String(hp(jx(str), "zeus_key".getBytes()));
    }

    private void hp(SharedPreferences sharedPreferences, SharedPreferences sharedPreferences2, String str, boolean z2) {
        Map<String, ?> all = sharedPreferences.getAll();
        if (!all.isEmpty()) {
            SharedPreferences.Editor editorEdit = sharedPreferences2.edit();
            Iterator<String> it = all.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                Object obj = all.get(next);
                if (z2) {
                    next = j(next);
                }
                if (obj instanceof String) {
                    editorEdit.putString(next, (String) obj);
                } else if (obj instanceof Integer) {
                    editorEdit.putInt(next, ((Integer) obj).intValue());
                } else if (obj instanceof Long) {
                    editorEdit.putLong(next, ((Long) obj).longValue());
                } else if (obj instanceof Float) {
                    editorEdit.putFloat(next, ((Float) obj).floatValue());
                } else if (obj instanceof Boolean) {
                    editorEdit.putBoolean(next, ((Boolean) obj).booleanValue());
                }
                editorEdit.apply();
            }
            return;
        }
        sharedPreferences2.edit().putBoolean(str, true).apply();
    }

    @Override // com.byazt.ye.e
    public void hp(String str, String str2) {
        SharedPreferences sharedPreferencesHp = hp();
        if (sharedPreferencesHp != null) {
            sharedPreferencesHp.edit().putString(str, str2).apply();
        }
    }

    @Override // com.byazt.ye.e
    public int hp(String str, int i2) {
        SharedPreferences sharedPreferencesHp = hp();
        return sharedPreferencesHp != null ? sharedPreferencesHp.getInt(str, i2) : i2;
    }

    @Override // com.byazt.ye.e
    public void hp(String str, boolean z2) {
        SharedPreferences sharedPreferencesHp = hp();
        if (sharedPreferencesHp != null) {
            sharedPreferencesHp.edit().putBoolean(str, z2).apply();
        }
    }

    @Override // com.byazt.ye.e
    public void hp(String str) {
        SharedPreferences sharedPreferencesHp = hp();
        if (sharedPreferencesHp != null) {
            sharedPreferencesHp.edit().remove(str).apply();
        }
    }

    private byte[] hp(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            bArr3[i2] = (byte) (bArr[i2] ^ bArr2[i2 % bArr2.length]);
        }
        return bArr3;
    }

    private String hp(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b3 : bArr) {
            sb.append(String.format("%02x", Byte.valueOf(b3)));
        }
        return sb.toString();
    }
}
