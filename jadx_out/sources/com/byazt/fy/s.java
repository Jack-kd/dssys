package com.byazt.fy;

import android.content.Context;
import android.graphics.Color;
import android.os.Looper;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.StyleSpan;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.byazt.fu.DownloadInfo;
import com.byazt.jz.vv;
import com.byazt.lf.k;
import com.byazt.pg.jl;
import com.byazt.xci.ec;
import com.byazt.xci.hd;
import com.byazt.xci.mp;
import com.byazt.xci.q;
import com.byazt.xci.sz;
import com.byazt.yk.e;
import com.byazt.ymw.hq;
import com.byazt.zn.ky;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 60, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes2.dex */
public class s {
    public static boolean a(mp mpVar) {
        return (mpVar == null || mpVar.u_() == null || mpVar.wf() != 1 || !w(mpVar) || ec.zy(mpVar)) ? false : true;
    }

    private static boolean eb(mp mpVar) {
        if (mpVar == null) {
            return false;
        }
        return s(mpVar);
    }

    public static int hp(mp mpVar) {
        if (mpVar == null || mpVar.bf() != 1) {
            return 0;
        }
        if (mpVar.cd() == 0) {
            return 1;
        }
        return mpVar.cd() == 1 ? eb(mpVar) ? 0 : 1 : mpVar.cd() == 2 ? 2 : 1;
    }

    public static int l(mp mpVar) {
        DownloadInfo downloadInfoL;
        if (mpVar == null) {
            return Integer.MIN_VALUE;
        }
        try {
            e eVarDi = com.byazt.yk.jx.di();
            if (eVarDi == null) {
                return Integer.MIN_VALUE;
            }
            if (mpVar.v() == null || TextUtils.isEmpty(mpVar.v().l())) {
                String strWv = ky.wv(mpVar);
                List<DownloadInfo> listL = eVarDi.l();
                if (listL != null) {
                    for (DownloadInfo downloadInfo : listL) {
                        if (downloadInfo != null && TextUtils.equals(strWv, downloadInfo.getPackageName())) {
                            downloadInfoL = downloadInfo;
                            break;
                        }
                    }
                    downloadInfoL = null;
                } else {
                    downloadInfoL = null;
                }
            } else {
                String strL = mpVar.v().l();
                downloadInfoL = eVarDi.l(com.byazt.yk.jx.hp(strL, hp(mpVar, strL, true)));
            }
            if (downloadInfoL == null) {
                return Integer.MIN_VALUE;
            }
            int status = downloadInfoL.getStatus();
            downloadInfoL.getStatusAtDbInit();
            downloadInfoL.getRealStatus();
            return status;
        } catch (Exception e2) {
            k.hp().hp("createAdDownloadModel", e2);
            return Integer.MIN_VALUE;
        }
    }

    private static boolean s(mp mpVar) {
        com.byazt.xci.a aVarVv = mpVar.vv();
        return (aVarVv == null || TextUtils.isEmpty(aVarVv.k()) || TextUtils.isEmpty(aVarVv.w()) || TextUtils.isEmpty(aVarVv.eb()) || aVarVv.hp() == null || aVarVv.hp().size() <= 0 || TextUtils.isEmpty(aVarVv.s()) || TextUtils.isEmpty(aVarVv.q())) ? false : true;
    }

    public static boolean w(mp mpVar) {
        sz szVarU_;
        if (mpVar != null && (szVarU_ = mpVar.u_()) != null && szVarU_.jx() && mpVar.wf() == 1) {
            return j(mpVar);
        }
        return false;
    }

    public static boolean j(mp mpVar) {
        int iJl;
        return (mpVar == null || mpVar.c() == null || hd.hp(mpVar) == 1 || mpVar.wf() != 1 || (iJl = ky.jl(mpVar)) == 1 || iJl == 2 || iJl == 5 || iJl == 6) ? false : true;
    }

    public static String jx(mp mpVar) {
        if (mpVar == null) {
            return "";
        }
        com.byazt.xci.w wVarV = mpVar.v();
        return (wVarV == null || TextUtils.isEmpty(wVarV.jx())) ? !TextUtils.isEmpty(mpVar.qk()) ? mpVar.qk() : !TextUtils.isEmpty(mpVar.cu()) ? mpVar.cu() : !TextUtils.isEmpty(mpVar.ks()) ? mpVar.ks() : "" : wVarV.jx();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(mp mpVar, String str, Context context, String str2) throws JSONException {
        if (mpVar == null || context == null || TextUtils.isEmpty(str2)) {
            return;
        }
        hp(context, mpVar);
        com.byazt.zn.w.l(mpVar, str, context, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void w(mp mpVar, String str, Context context, String str2) throws JSONException {
        if (mpVar == null || context == null || TextUtils.isEmpty(str2)) {
            return;
        }
        hp(context, mpVar);
        com.byazt.zn.w.jx(mpVar, str, context, str2);
    }

    public static String hp(mp mpVar, String str, boolean z2) {
        int iK = sz.k(mpVar);
        String strHp = com.byazt.jz.s.u().hp(mpVar);
        if (!TextUtils.isEmpty(strHp) && !TextUtils.isEmpty(str) && iK > 0) {
            strHp = strHp + File.separator + com.byazt.ymw.a.l(str);
        }
        if (TextUtils.isEmpty(str) && !z2 && com.byazt.lf.w.hp("dl_download_url_empty", 0.0d)) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("message", "download_url is null");
                if (mpVar != null) {
                    jSONObject.put("reqId", mpVar.ns());
                    jSONObject.put("cid", mpVar.j());
                    jSONObject.put("rit", ky.hp(mpVar, ""));
                    jSONObject.put("meta", mpVar.ij());
                }
                th = null;
            } catch (Throwable th) {
                th = th;
            }
            k.hp().hp("dl_download_url_empty", jSONObject, th);
        }
        return strHp;
    }

    public static void l(mp mpVar, String str, Context context, String str2) throws JSONException {
        if (mpVar == null || context == null || TextUtils.isEmpty(str2)) {
            return;
        }
        hp(context, mpVar);
        com.byazt.zn.w.hp(context, str, mpVar, str2);
    }

    public static void l(mp mpVar, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (mpVar == null) {
                jSONObject.put("message", "meta is null");
            } else {
                sz szVarU_ = mpVar.u_();
                if (szVarU_ == null) {
                    jSONObject.put("message", "download_conf is null");
                } else {
                    JSONObject jSONObject2 = new JSONObject();
                    szVarU_.hp(jSONObject2);
                    jSONObject.put("message", jSONObject2);
                }
                jSONObject.put("req_id", mpVar.ns());
                jSONObject.put("cid", mpVar.j());
                jSONObject.put("rit", ky.hp(mpVar, ""));
            }
            jSONObject.put("dl_type", str);
        } catch (Exception unused) {
        }
        k.hp().hp("download_no_suspend", jSONObject, (Throwable) null);
    }

    public static void hp(final Context context, mp mpVar, String str) {
        if (context == null) {
            context = com.byazt.jz.sz.getContext();
        }
        hp(mpVar, str);
        if (Looper.getMainLooper() == Looper.myLooper()) {
            hq.hp(context, "应用信息缺失，暂无法响应下载", 1);
        } else {
            vv.a().post(new com.byazt.uid.eb("tt_download_toast") { // from class: com.byazt.fy.s.1
                @Override // java.lang.Runnable
                public void run() {
                    hq.hp(context, "应用信息缺失，暂无法响应下载", 1);
                }
            });
        }
    }

    public static void hp(mp mpVar, String str) throws JSONException {
        if (mpVar != null) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("reqId", mpVar.ns());
                jSONObject.putOpt("cid", mpVar.j());
                jSONObject.putOpt("adId", mpVar.cx());
                jSONObject.putOpt("dlscene", str);
            } catch (Exception unused) {
            }
            k.hp().hp("download_no_response", jSONObject, (Throwable) null);
        }
    }

    public static com.byazt.xci.a hp(String str) {
        JSONObject jSONObject = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            jSONObject = new JSONObject(str);
        } catch (JSONException unused) {
        }
        return com.byazt.jz.hp.w(jSONObject);
    }

    public static void hp(int i2, JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            return;
        }
        try {
            JSONObject jSONObjectT = com.byazt.jz.sz.l().t();
            int iOptInt = jSONObjectT != null ? jSONObjectT.optInt("resume_download_max_count", 5) : 5;
            if ((i2 & 1) != 0) {
                jSONObject.put("failed_resume_max_count", iOptInt);
            }
            if ((i2 & 2) != 0) {
                jSONObject.put("paused_resume_max_count", iOptInt);
                jSONObject.put("enable_notification_ui", 2);
            }
            if ((i2 & 4) != 0) {
                jSONObject.put("uninstall_resume_max_count", iOptInt);
            }
            if ((i2 & 8) != 0) {
                jSONObject.put("install_queue_enable", 1);
            }
        } catch (Exception unused) {
        }
    }

    public static FrameLayout hp(final Context context, final mp mpVar, com.byazt.xci.j jVar, int i2) throws JSONException {
        String strHp;
        String strJx;
        String strL;
        String strGu;
        String strS;
        String strW;
        final int i3;
        String str;
        String str2;
        int i4;
        if (context == null) {
            return null;
        }
        com.byazt.xci.a aVarVv = mpVar.vv();
        final String strL2 = ky.l(mpVar);
        if (jVar != null) {
            strHp = jVar.hp();
            strJx = jVar.jx();
            strL = jVar.l();
            strGu = jVar.a();
            strS = jVar.s();
            strW = jVar.w();
        } else {
            if (aVarVv != null) {
                String strK = aVarVv.k();
                String strEb = aVarVv.eb();
                String strW2 = aVarVv.w();
                strGu = aVarVv.gu();
                strHp = strK;
                strJx = strEb;
                strL = strW2;
                strS = null;
            } else {
                strHp = null;
                strJx = null;
                strL = null;
                strGu = null;
                strS = null;
            }
            strW = strS;
        }
        if (TextUtils.isEmpty(strHp) || TextUtils.isEmpty(strJx)) {
            return null;
        }
        int color = Color.parseColor("#99FFFFFF");
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder("点击");
        sb2.append(i2 == 8 ? "下" : "上");
        sb2.append("方按钮 立即下载应用");
        sb.append(sb2.toString());
        sb.append("\n应用名称：");
        sb.append(strHp);
        sb.append("   |   开发者：");
        sb.append(strJx);
        sb.append("\n版本号：");
        sb.append(strL);
        if (TextUtils.isEmpty(strGu)) {
            sb.append("  |  功能  |  权限  |  隐私  ");
        } else {
            sb.append("  |  功能  |  权限  |  隐私  |  备案  ");
        }
        SpannableString spannableString = new SpannableString(sb.toString());
        int iIndexOf = sb.indexOf("功能");
        int i5 = iIndexOf + 2;
        int iIndexOf2 = sb.indexOf("隐私");
        int i6 = iIndexOf2 + 2;
        int iIndexOf3 = sb.indexOf("权限");
        int i7 = iIndexOf3 + 2;
        if (TextUtils.isEmpty(strGu)) {
            i3 = color;
            str = strS;
            str2 = strW;
            i4 = 34;
        } else {
            int iIndexOf4 = sb.indexOf("备案");
            int i8 = iIndexOf4 + 2;
            spannableString.setSpan(new StyleSpan(1), iIndexOf4, i8, 34);
            i3 = color;
            final String str3 = strS;
            str2 = strW;
            i4 = 34;
            str = str3;
            spannableString.setSpan(new ClickableSpan() { // from class: com.byazt.fy.s.2
                @Override // android.text.style.ClickableSpan
                public void onClick(@NonNull View view) throws JSONException {
                    s.hp(mpVar, str3, context, strL2);
                }

                @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                public void updateDrawState(@NonNull TextPaint textPaint) {
                    super.updateDrawState(textPaint);
                    if (textPaint != null) {
                        textPaint.setColor(i3);
                        textPaint.setUnderlineText(false);
                        textPaint.bgColor = 0;
                    }
                }
            }, iIndexOf4, i8, 34);
        }
        spannableString.setSpan(new StyleSpan(1), iIndexOf, i5, i4);
        final String str4 = str2;
        spannableString.setSpan(new ClickableSpan() { // from class: com.byazt.fy.s.3
            @Override // android.text.style.ClickableSpan
            public void onClick(View view) throws JSONException {
                s.l(mpVar, str4, context, strL2);
            }

            @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
            public void updateDrawState(TextPaint textPaint) {
                super.updateDrawState(textPaint);
                if (textPaint != null) {
                    textPaint.setColor(i3);
                    textPaint.setUnderlineText(false);
                    textPaint.bgColor = 0;
                }
            }
        }, iIndexOf, i5, i4);
        spannableString.setSpan(new StyleSpan(1), iIndexOf2, i6, i4);
        final String str5 = str;
        spannableString.setSpan(new ClickableSpan() { // from class: com.byazt.fy.s.4
            @Override // android.text.style.ClickableSpan
            public void onClick(View view) throws JSONException {
                s.a(mpVar, str5, context, strL2);
            }

            @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
            public void updateDrawState(TextPaint textPaint) {
                super.updateDrawState(textPaint);
                if (textPaint != null) {
                    textPaint.setColor(i3);
                    textPaint.setUnderlineText(false);
                    textPaint.bgColor = 0;
                }
            }
        }, iIndexOf2, i6, i4);
        spannableString.setSpan(new StyleSpan(1), iIndexOf3, i7, i4);
        spannableString.setSpan(new ClickableSpan() { // from class: com.byazt.fy.s.5
            @Override // android.text.style.ClickableSpan
            public void onClick(View view) throws JSONException {
                s.w(mpVar, str5, context, strL2);
            }

            @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
            public void updateDrawState(TextPaint textPaint) {
                super.updateDrawState(textPaint);
                if (textPaint != null) {
                    textPaint.setColor(i3);
                    textPaint.setUnderlineText(false);
                    textPaint.bgColor = 0;
                }
            }
        }, iIndexOf3, i7, i4);
        TextView textView = new TextView(context);
        FrameLayout frameLayout = new FrameLayout(context);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        textView.setTextColor(i3);
        textView.setTextSize(1, 10.0f);
        textView.setLineSpacing(9.0f, 1.0f);
        textView.setText(spannableString);
        textView.setGravity(17);
        textView.setHighlightColor(0);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        frameLayout.addView(textView, layoutParams);
        return frameLayout;
    }

    private static void hp(Context context, mp mpVar) throws JSONException {
        HashMap map = new HashMap();
        map.put("downloadstatuscontroller_type", 2);
        String strL = ky.l(mpVar);
        q.hp hpVar = new q.hp();
        float fA = xh.a(context);
        int displayDpi = ((jl) com.byazt.ym.j.getService("device_info_new")).getDisplayDpi();
        com.byazt.jdb.j.hp("click", mpVar, hpVar.hp(fA).l(displayDpi).hp((byte) 3).l(xh.eb(context)).hp(l(mpVar)).hp(), strL, true, map, 1, false, false);
    }

    public static void hp(mp mpVar, String str, Context context, String str2) throws JSONException {
        if (mpVar == null || context == null || TextUtils.isEmpty(str2)) {
            return;
        }
        hp(context, mpVar);
        com.byazt.zn.w.hp(mpVar, str, context, str2);
    }
}
