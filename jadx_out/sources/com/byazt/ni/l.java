package com.byazt.ni;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.provider.FontsContractCompat;
import com.byazt.dp.JumpUnknownSourceActivity;
import com.byazt.ei.hp;
import com.byazt.ez.s;
import com.byazt.fu.DownloadInfo;
import com.byazt.rx.BaseConstants;
import com.byazt.yk.Downloader;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SIDX_VIDEO_WINDOW_SIZE, 34})
/* loaded from: classes3.dex */
public class l {
    public static final String hp = "l";
    public static hp jx;

    /* renamed from: l, reason: collision with root package name */
    public static jx f23610l;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SIDX_VIDEO_WINDOW_SIZE, 123})
    public static class hp implements hp.InterfaceC0218hp {
        public final w hp;
        public JSONObject jx;

        /* renamed from: l, reason: collision with root package name */
        public final int f23611l;

        public hp(Context context, Intent intent, int i2, JSONObject jSONObject, InterfaceC0320l interfaceC0320l) {
            this.jx = jSONObject;
            int iOptInt = jSONObject.optInt("query_interval", 1000);
            this.f23611l = iOptInt;
            this.hp = new w(context, intent, i2, interfaceC0320l, iOptInt);
        }

        @Override // com.byazt.ei.hp.InterfaceC0218hp
        public void jx() {
            int iOptInt = this.jx.optInt("time_out_second", 20);
            Message messageObtain = Message.obtain();
            messageObtain.what = 1;
            this.hp.f23615a.sendMessage(messageObtain);
            if (iOptInt <= 0 || iOptInt >= 60) {
                return;
            }
            Message messageObtain2 = Message.obtain();
            messageObtain2.what = 2;
            this.hp.f23615a.sendMessageDelayed(messageObtain2, iOptInt * 1000);
        }

        @Override // com.byazt.ei.hp.InterfaceC0218hp
        public void l() {
            if (!this.hp.f23617q) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 2;
                this.hp.f23615a.sendMessage(messageObtain);
            }
            com.byazt.ei.hp.hp().l(this);
            hp unused = l.jx = null;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SIDX_VIDEO_WINDOW_SIZE, 893})
    public static class j implements Callable<Boolean> {
        public final Context hp;

        /* renamed from: j, reason: collision with root package name */
        public final long f23612j;
        public final Handler jx;

        /* renamed from: l, reason: collision with root package name */
        public final InterfaceC0320l f23613l;

        public j(Handler handler, Context context, InterfaceC0320l interfaceC0320l, long j2) {
            this.hp = context;
            this.f23613l = interfaceC0320l;
            this.jx = handler;
            this.f23612j = j2;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            InterfaceC0320l interfaceC0320l;
            try {
                interfaceC0320l = this.f23613l;
            } catch (Throwable unused) {
            }
            if (interfaceC0320l != null) {
                long j2 = this.f23612j;
                if (j2 > 0 && j2 <= 10000) {
                    Context context = this.hp;
                    boolean zHp = context != null ? interfaceC0320l.hp(context) : false;
                    Message messageObtain = Message.obtain();
                    if (zHp) {
                        messageObtain.what = 2;
                        this.jx.sendMessage(messageObtain);
                    } else {
                        messageObtain.what = 1;
                        this.jx.sendMessageDelayed(messageObtain, this.f23612j);
                    }
                    return Boolean.FALSE;
                }
            }
            return Boolean.FALSE;
        }
    }

    public interface jx {
        void hp(DownloadInfo downloadInfo, com.byazt.ni.hp hpVar);
    }

    /* renamed from: com.byazt.ni.l$l, reason: collision with other inner class name */
    public interface InterfaceC0320l {
        boolean hp(@NonNull Context context);
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SIDX_VIDEO_WINDOW_SIZE, 903})
    public static class w implements s.hp {
        public static int hp;

        /* renamed from: l, reason: collision with root package name */
        public static int f23614l;

        /* renamed from: a, reason: collision with root package name */
        public final Handler f23615a;
        public final long eb;

        /* renamed from: j, reason: collision with root package name */
        public final Intent f23616j;
        public final Context jx;

        /* renamed from: q, reason: collision with root package name */
        public boolean f23617q = false;

        /* renamed from: s, reason: collision with root package name */
        public Future<Boolean> f23618s;

        /* renamed from: w, reason: collision with root package name */
        public final InterfaceC0320l f23619w;

        public w(Context context, Intent intent, int i2, InterfaceC0320l interfaceC0320l, long j2) {
            this.jx = context;
            this.f23616j = intent;
            f23614l = i2;
            this.f23619w = interfaceC0320l;
            this.f23615a = new s(Looper.getMainLooper(), this);
            this.eb = j2;
        }

        @Override // com.byazt.ez.s.hp
        public void hp(Message message) throws JSONException {
            if (message != null) {
                int i2 = message.what;
                if (i2 == 1) {
                    long j2 = this.eb;
                    if (j2 <= 0 || j2 > 10000) {
                        return;
                    }
                    hp = 1;
                    this.f23618s = com.byazt.yk.jx.jl().submit(new j(this.f23615a, this.jx, this.f23619w, this.eb));
                    return;
                }
                if (i2 == 2) {
                    hp = 2;
                    this.f23615a.removeMessages(2);
                    this.f23615a.removeMessages(1);
                    Future<Boolean> future = this.f23618s;
                    if (future != null) {
                        future.cancel(true);
                    }
                    if (!this.f23617q && (Build.VERSION.SDK_INT < 29 || com.byazt.ei.hp.hp().l())) {
                        Intent intent = this.f23616j;
                        if (intent != null) {
                            l.l(this.jx, intent);
                        } else {
                            DownloadInfo downloadInfo = Downloader.getInstance(this.jx).getDownloadInfo(f23614l);
                            if (downloadInfo != null && downloadInfo.isDownloadOverStatus()) {
                                com.byazt.ni.jx.l(this.jx, f23614l, false);
                            }
                        }
                        this.f23617q = true;
                    }
                    l.l(f23614l, this.f23616j == null, l.hp(this.jx));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean j(Context context) {
        if (context == null) {
            return true;
        }
        try {
            return Settings.Secure.getInt(context.getContentResolver(), "install_non_market_apps", 1) > 0;
        } catch (Throwable unused) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(api = 26)
    public static boolean w(Context context) {
        if (context == null) {
            return true;
        }
        try {
            return context.getPackageManager().canRequestPackageInstalls();
        } catch (Throwable unused) {
            return true;
        }
    }

    private static void j(int i2, JSONObject jSONObject) throws JSONException {
        int i3 = 1;
        boolean z2 = jSONObject.optInt("show_unknown_source_on_startup") == 1;
        JSONObject jSONObject2 = new JSONObject();
        if (!z2) {
            i3 = 2;
        }
        try {
            jSONObject2.put(com.umeng.ccg.a.f49756j, i3);
        } catch (Exception unused) {
        }
        com.byazt.yk.jx.f().l(i2, "guide_auth_dialog_show", jSONObject2);
    }

    public static void jx(int i2, JSONObject jSONObject) {
        int i3 = 1;
        boolean z2 = jSONObject.optInt("show_unknown_source_on_startup") == 1;
        JSONObject jSONObject2 = new JSONObject();
        if (!z2) {
            i3 = 2;
        }
        try {
            jSONObject2.put(com.umeng.ccg.a.f49756j, i3);
        } catch (Exception unused) {
        }
        com.byazt.yk.jx.f().l(i2, "guide_auth_open_setting", jSONObject2);
    }

    private static boolean l(Context context, @NonNull DownloadInfo downloadInfo, JSONObject jSONObject, @NonNull com.byazt.ni.hp hpVar) {
        if (context != null && jSONObject != null) {
            String savePath = downloadInfo.getSavePath();
            if (TextUtils.isEmpty(savePath)) {
                return false;
            }
            hpVar.f23587j = "custom";
            com.byazt.od.hp hpVarHp = com.byazt.od.j.hp(context, "custom", jSONObject, downloadInfo);
            if (hpVarHp != null && hpVarHp.hp()) {
                Intent intentL = hpVarHp.l();
                if (intentL == null) {
                    return false;
                }
                if (!hp(new File(savePath), downloadInfo, jSONObject)) {
                    hpVar.f23588l = 6;
                } else {
                    if (l(context, intentL)) {
                        hpVar.f23588l = 0;
                        return true;
                    }
                    hpVar.f23588l = 1;
                }
                return false;
            }
            hpVar.f23588l = 3;
        }
        return false;
    }

    public static boolean hp(Context context, DownloadInfo downloadInfo, Intent intent, boolean z2) {
        JSONArray jSONArrayW = com.byazt.jb.hp.hp(downloadInfo.getId()).w("ah_plans");
        if (jSONArrayW != null) {
            int length = jSONArrayW.length();
            for (int i2 = 0; i2 < length; i2++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayW.optJSONObject(i2);
                if (com.byazt.wm.hp.hp(jSONObjectOptJSONObject) && hp(context, downloadInfo, intent, jSONObjectOptJSONObject, z2)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:103:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00ec A[PHI: r15
      0x00ec: PHI (r15v13 com.byazt.ni.hp) = (r15v2 com.byazt.ni.hp), (r15v8 com.byazt.ni.hp), (r15v14 com.byazt.ni.hp) binds: [B:94:0x0169, B:84:0x0141, B:61:0x00ea] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0163  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean hp(android.content.Context r11, com.byazt.fu.DownloadInfo r12, android.content.Intent r13, org.json.JSONObject r14, boolean r15) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.SecurityException, java.lang.IllegalArgumentException {
        /*
            Method dump skipped, instructions count: 470
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ni.l.hp(android.content.Context, com.byazt.fu.DownloadInfo, android.content.Intent, org.json.JSONObject, boolean):boolean");
    }

    public static com.byazt.ni.hp l(JSONObject jSONObject, com.byazt.jb.hp hpVar) {
        com.byazt.ni.hp hpVar2 = new com.byazt.ni.hp();
        if (jSONObject == null) {
            return hpVar2;
        }
        hpVar2.hp = jSONObject.optString("type");
        hpVar2.f23589w = "vbi";
        if (com.byazt.od.j.hp(com.byazt.yk.jx.mp(), "vbi", jSONObject, hpVar)) {
            hpVar2.f23588l = 0;
            return hpVar2;
        }
        hp(hpVar2, 3);
        return hpVar2;
    }

    public static void l(int i2, JSONObject jSONObject) {
        int i3 = 1;
        boolean z2 = jSONObject.optInt("show_unknown_source_on_startup") == 1;
        JSONObject jSONObject2 = new JSONObject();
        if (!z2) {
            i3 = 2;
        }
        try {
            jSONObject2.put(com.umeng.ccg.a.f49756j, i3);
        } catch (Exception unused) {
        }
        com.byazt.yk.jx.f().l(i2, "guide_auth_dialog_cancel", jSONObject2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(int i2, boolean z2, boolean z3) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(com.umeng.ccg.a.f49756j, z2 ? 1 : 2);
            jSONObject.put(FontsContractCompat.Columns.RESULT_CODE, z3 ? 1 : 2);
        } catch (Exception unused) {
        }
        com.byazt.yk.jx.f().l(i2, "guide_auth_result", jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean l(Context context, Intent intent) {
        return hp(context, intent, true);
    }

    private static boolean hp(Context context, @NonNull DownloadInfo downloadInfo, JSONObject jSONObject, @NonNull com.byazt.ni.hp hpVar, com.byazt.jb.hp hpVar2) {
        boolean zL;
        String strOptString = jSONObject.optString("type");
        hpVar.hp = strOptString;
        Intent intentL = com.byazt.od.j.hp(context, "vbi", jSONObject, downloadInfo).l();
        StringBuilder sb = new StringBuilder();
        try {
            zL = l(context, intentL);
        } catch (Throwable th) {
            sb.append(strOptString);
            sb.append(" startActivity failed : ");
            sb.append(hp(th));
            hp(hpVar, 1);
            zL = false;
        }
        if (!zL) {
            hpVar.jx = sb.toString();
        } else {
            hpVar.f23588l = 0;
        }
        return true;
    }

    private static boolean hp(Context context, DownloadInfo downloadInfo, JSONObject jSONObject, com.byazt.ni.hp hpVar) {
        String str;
        boolean z2;
        if (context != null && jSONObject != null) {
            String strOptString = jSONObject.optString("device_plans");
            hpVar.f23589w = strOptString;
            if (!TextUtils.isEmpty(strOptString)) {
                String[] strArrSplit = strOptString.split(",");
                String savePath = downloadInfo.getSavePath();
                if (TextUtils.isEmpty(savePath)) {
                    return false;
                }
                File file = new File(savePath);
                StringBuilder sb = new StringBuilder();
                int length = strArrSplit.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        str = null;
                        z2 = false;
                        break;
                    }
                    str = strArrSplit[i2];
                    com.byazt.od.hp hpVarHp = com.byazt.od.j.hp(context, str, jSONObject, downloadInfo);
                    if (hpVarHp != null) {
                        Intent intentL = hpVarHp.l();
                        if (intentL != null) {
                            if (hp(file, downloadInfo, jSONObject)) {
                                z2 = true;
                                try {
                                    hp(context, intentL, false);
                                    break;
                                } catch (Throwable th) {
                                    sb.append(str);
                                    sb.append(" startActivity failed : ");
                                    sb.append(hp(th));
                                    hp(hpVar, 1);
                                }
                            } else {
                                hp(hpVar, 6);
                                sb.append(str);
                                sb.append(" createDescFile failed! ");
                            }
                        } else {
                            hp(hpVar, 3);
                            sb.append(str);
                            sb.append(" resolveActivity failed! ");
                        }
                    }
                    sb.append("  ");
                    i2++;
                }
                if (!z2) {
                    hpVar.jx = sb.toString();
                } else {
                    hpVar.f23587j = str;
                    hpVar.f23588l = 0;
                }
                return z2;
            }
        }
        return false;
    }

    public static int hp(@NonNull com.byazt.jb.hp hpVar) {
        if (!(hpVar.j("download_dir") != null ? !TextUtils.isEmpty(r0.optString("dir_name")) : false)) {
            return 5;
        }
        if (!com.byazt.jb.hp.jx().hp("get_download_info_by_list")) {
            return 4;
        }
        JSONArray jSONArrayW = hpVar.w("ah_plans");
        int i2 = -1;
        if (jSONArrayW != null) {
            int length = jSONArrayW.length();
            for (int i3 = 0; i3 < length; i3++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayW.optJSONObject(i3);
                if (com.byazt.wm.hp.hp(jSONObjectOptJSONObject)) {
                    String strOptString = jSONObjectOptJSONObject.optString("type");
                    if (!"plan_a".equals(strOptString) && !"plan_b".equals(strOptString) && !"plan_e".equals(strOptString) && !"plan_f".equals(strOptString)) {
                        if ("plan_d".equalsIgnoreCase(strOptString) || "plan_h".equalsIgnoreCase(strOptString) || ("plan_g".equalsIgnoreCase(strOptString) && (i2 = l(jSONObjectOptJSONObject, hpVar).f23588l) == 0)) {
                            return 0;
                        }
                    } else {
                        i2 = hp(jSONObjectOptJSONObject, hpVar).f23588l;
                        if (i2 == 0) {
                            return 0;
                        }
                    }
                }
            }
        }
        return i2;
    }

    @NonNull
    public static com.byazt.ni.hp hp(JSONObject jSONObject, com.byazt.jb.hp hpVar) {
        com.byazt.ni.hp hpVar2 = new com.byazt.ni.hp();
        if (jSONObject != null) {
            String strOptString = jSONObject.optString("type");
            hpVar2.hp = strOptString;
            if ("plan_b".equals(strOptString)) {
                hpVar2.f23589w = "custom";
                if (com.byazt.od.j.hp(com.byazt.yk.jx.mp(), "custom", jSONObject, hpVar)) {
                    hpVar2.f23588l = 0;
                    return hpVar2;
                }
                hp(hpVar2, 3);
                return hpVar2;
            }
            String strOptString2 = jSONObject.optString("device_plans");
            hpVar2.f23589w = strOptString2;
            if (!TextUtils.isEmpty(strOptString2)) {
                for (String str : strOptString2.split(",")) {
                    if (com.byazt.od.j.hp(com.byazt.yk.jx.mp(), str, jSONObject, hpVar)) {
                        hpVar2.f23588l = 0;
                        return hpVar2;
                    }
                    hp(hpVar2, 3);
                }
            }
        }
        return hpVar2;
    }

    public static com.byazt.ni.hp hp(JSONObject jSONObject, String str, Context context, com.byazt.jb.hp hpVar) {
        com.byazt.ni.hp hpVar2 = new com.byazt.ni.hp();
        if (jSONObject != null && com.byazt.wm.w.jx()) {
            hpVar2.hp = jSONObject.optString("type");
            if (hpVar.hp("bi", 0) == 1) {
                hpVar2.f23588l = 0;
                return hpVar2;
            }
            if (hp(context)) {
                hpVar2.f23588l = 2;
                return hpVar2;
            }
            if (com.byazt.wm.hp.hp(str) != null) {
                hpVar2.f23588l = 0;
                return hpVar2;
            }
            hpVar2.f23588l = 9;
        }
        return hpVar2;
    }

    private static void hp(com.byazt.ni.hp hpVar, int i2) {
        int i3 = hpVar.f23588l;
        if (i3 != -1) {
            hpVar.f23588l = (i3 * 10) + i2;
        } else {
            hpVar.f23588l = i2;
        }
    }

    private static boolean hp(File file, DownloadInfo downloadInfo, @NonNull JSONObject jSONObject) {
        if (file == null) {
            return false;
        }
        String path = file.getPath();
        JSONObject jSONObjectJ = com.byazt.jb.hp.hp(downloadInfo.getId()).j("download_dir");
        File file2 = null;
        String strOptString = jSONObjectJ != null ? jSONObjectJ.optString("ins_desc") : null;
        if (!TextUtils.isEmpty(strOptString) && !TextUtils.isEmpty(strOptString)) {
            file2 = new File(path + File.separator + strOptString);
        }
        if (file2 == null) {
            return true;
        }
        try {
            if (!file2.createNewFile()) {
                return true;
            }
            file2.deleteOnExit();
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public static boolean hp(Context context, @Nullable Intent intent, JSONObject jSONObject, int i2, @Nullable com.byazt.ni.hp hpVar) {
        if (context != null && jSONObject != null) {
            long jOptLong = jSONObject.optLong("jump_interval", 0L);
            if (jOptLong <= 0) {
                return false;
            }
            SharedPreferences sharedPreferencesL = com.byazt.rz.l.l(context, "sp_ah_config", 0);
            if ((System.currentTimeMillis() - sharedPreferencesL.getLong("last_jump_unknown_source_time", 0L)) / 60000 >= jOptLong && !hp(context)) {
                sharedPreferencesL.edit().putLong("last_jump_unknown_source_time", System.currentTimeMillis()).apply();
                if (jSONObject.optInt("show_unknown_source_dialog", 0) == 1) {
                    Intent intent2 = new Intent(context, (Class<?>) JumpUnknownSourceActivity.class);
                    intent2.addFlags(C.ENCODING_PCM_MU_LAW);
                    intent2.putExtra("intent", intent);
                    intent2.putExtra("config", jSONObject.toString());
                    intent2.putExtra("id", i2);
                    try {
                        if (hp(context, intent2, false)) {
                            j(i2, jSONObject);
                        }
                        return true;
                    } catch (Throwable th) {
                        if (hpVar != null) {
                            hpVar.f23588l = 1;
                            hpVar.jx = "tryShowUnknownSourceDialog" + hp(th);
                        }
                        return false;
                    }
                }
                if (hp(context, intent, i2, jSONObject)) {
                    jx(i2, jSONObject);
                }
                return true;
            }
        }
        return false;
    }

    public static boolean hp(Context context, @Nullable Intent intent, int i2, JSONObject jSONObject) {
        try {
            if (com.byazt.wm.w.jx() && Build.VERSION.SDK_INT < 26 && !j(context)) {
                com.byazt.od.a aVar = new com.byazt.od.a(context);
                if (aVar.hp()) {
                    hp(context, intent, i2, jSONObject, new InterfaceC0320l() { // from class: com.byazt.ni.l.1
                        @Override // com.byazt.ni.l.InterfaceC0320l
                        public boolean hp(@NonNull Context context2) {
                            return l.j(context2);
                        }
                    });
                    return l(context, aVar.l());
                }
            } else if (Build.VERSION.SDK_INT >= 26 && context.getApplicationInfo().targetSdkVersion >= 26 && !w(context)) {
                com.byazt.od.l lVar = new com.byazt.od.l(context);
                if (lVar.hp()) {
                    hp(context, intent, i2, jSONObject, new InterfaceC0320l() { // from class: com.byazt.ni.l.2
                        @Override // com.byazt.ni.l.InterfaceC0320l
                        public boolean hp(@NonNull Context context2) {
                            return l.w(context2);
                        }
                    });
                    return l(context, lVar.l());
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static boolean hp(Context context) {
        if (context == null) {
            return true;
        }
        if (com.byazt.wm.w.jx() && Build.VERSION.SDK_INT < 26) {
            return j(context);
        }
        if (Build.VERSION.SDK_INT >= 26 && context.getApplicationInfo().targetSdkVersion >= 26) {
            return w(context);
        }
        return true;
    }

    public static boolean hp() {
        return w.hp == 1;
    }

    public static void hp(int i2, JSONObject jSONObject) {
        int i3 = 1;
        boolean z2 = jSONObject.optInt("show_unknown_source_on_startup") == 1;
        JSONObject jSONObject2 = new JSONObject();
        if (!z2) {
            i3 = 2;
        }
        try {
            jSONObject2.put(com.umeng.ccg.a.f49756j, i3);
        } catch (Exception unused) {
        }
        com.byazt.yk.jx.f().l(i2, "guide_auth_dialog_confirm", jSONObject2);
    }

    private static void hp(Context context, Intent intent, int i2, JSONObject jSONObject, InterfaceC0320l interfaceC0320l) {
        if (jx != null) {
            com.byazt.ei.hp.hp().l(jx);
            jx = null;
        }
        jx = new hp(context, intent, i2, jSONObject, interfaceC0320l);
        com.byazt.ei.hp.hp().hp(jx);
    }

    public static boolean hp(Context context, Intent intent, boolean z2) {
        if (context == null || intent == null) {
            return false;
        }
        if (z2) {
            try {
                intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
                context.startActivity(intent);
                return true;
            } catch (Throwable unused) {
                return false;
            }
        }
        intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
        context.startActivity(intent);
        return true;
    }

    public static String hp(Throwable th) {
        String string = th.toString();
        return string.length() > 800 ? string.substring(0, 500) : string;
    }

    public static void hp(jx jxVar) {
        f23610l = jxVar;
    }
}
