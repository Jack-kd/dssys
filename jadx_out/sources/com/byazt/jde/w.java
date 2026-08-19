package com.byazt.jde;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import com.byazt.er.hp;
import com.byazt.jz.b;
import com.byazt.jz.d;
import com.byazt.jz.s;
import com.byazt.jz.sz;
import com.byazt.lca.a;
import com.byazt.xci.f;
import com.byazt.xci.mp;
import com.byazt.ymw.eb;
import com.byazt.ymw.hq;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.analytics.pro.bv;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 250, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes.dex */
public class w implements com.byazt.jlt.hp {
    public final mp hp;

    /* renamed from: j, reason: collision with root package name */
    public String f21438j;
    public final j jx;

    /* renamed from: l, reason: collision with root package name */
    public final WeakReference<Context> f21439l;

    /* renamed from: w, reason: collision with root package name */
    public boolean f21440w;

    public w(mp mpVar, Context context, j jVar, boolean z2) {
        this.hp = mpVar;
        this.f21439l = new WeakReference<>(context);
        this.jx = jVar;
        this.f21440w = z2;
    }

    private String jx(String str, String str2) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.putOpt("app_name", s.u().cx());
            jSONObject.putOpt("app_id", s.u().ns());
            jSONObject.putOpt("os_api", Integer.valueOf(Build.VERSION.SDK_INT));
            jSONObject.putOpt(bv.f48924y, Build.VERSION.RELEASE);
            jSONObject.putOpt("manufacturer", Build.MANUFACTURER);
            jSONObject.putOpt("did", ((com.byazt.pg.jx) com.byazt.ym.j.getService("embed_applog")).getDid());
            jSONObject.putOpt("sdk_version", 7643);
            jSONObject.putOpt("sdk_api_version", Integer.valueOf(d.f21856j));
            jSONObject.putOpt("live_sdk_version", com.byazt.yx.l.hp().eb());
            jSONObject.putOpt("msg", str);
            jSONObject.putOpt("recordId", str2);
            jSONObject.putOpt(bv.f48923x, AnalyticsConstants.SDK_TYPE);
            jSONObject.putOpt("ad_info", this.hp.hb());
            com.byazt.jt.l lVarDb = this.hp.db();
            if (lVarDb != null) {
                jSONObject.putOpt("ad_slot_type", Integer.valueOf(lVarDb.sz()));
                jSONObject.putOpt("rit", lVarDb.ec());
            }
            return jSONObject.toString();
        } catch (Exception unused) {
            return str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(final String str) {
        com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.jde.w.3
            @Override // java.lang.Runnable
            public void run() {
                if (w.this.f21439l.get() != null) {
                    hq.hp((Context) w.this.f21439l.get(), str, 1);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(String str, String str2) throws Throwable {
        HashMap map = null;
        File file = new File(eb.l(sz.getContext(), false, null), str);
        file.mkdirs();
        b bVar = (b) sz.hp();
        com.byazt.jt.l lVarDb = this.hp.db();
        JSONObject jSONObjectHp = bVar.hp(lVarDb, new f(), lVarDb.sz(), false, 6, false);
        if (jSONObjectHp == null) {
            return;
        }
        com.byazt.dnb.w.hp(a.hp().l(jSONObjectHp.toString()).j().toString(), new File(file, "request.info"));
        com.byazt.dnb.w.hp(com.byazt.ymw.hp.hp(com.byazt.jkd.s.hp((com.byazt.jkd.w) null).a()).toString(), new File(file, "setting.info"));
        com.byazt.dnb.w.hp(com.byazt.ymw.hp.hp(this.hp.ij()).toString(), new File(file, "meta.info"));
        File fileHp = com.byazt.dnb.w.hp(file, str + ".zip");
        String strJx = jx(str2, str);
        HashMap map2 = new HashMap();
        Pair<Integer, JSONObject> pairHp = a.hp().hp(strJx, false);
        if (pairHp != null) {
            map = new HashMap();
            map2.put("deviceInfo", ((JSONObject) pairHp.second).optString("message"));
            map.put("x-pglcypher", String.valueOf(pairHp.first));
        }
        new com.byazt.er.hp().hp(this.jx.jx(), fileHp, map2, new hp.InterfaceC0220hp() { // from class: com.byazt.jde.w.5
            @Override // com.byazt.er.hp.InterfaceC0220hp
            public void hp(String str3) {
                w wVar = w.this;
                wVar.l(wVar.f21440w ? "已复制广告ID\r\n请前往应用内上报问题" : "反馈上传成功！");
            }

            @Override // com.byazt.er.hp.InterfaceC0220hp
            public void hp(int i2, String str3) {
                w wVar = w.this;
                wVar.l(wVar.f21440w ? "反馈失败\r\n 请重新复制" : "反馈失败");
            }
        }, map);
        fileHp.delete();
        com.byazt.dnb.w.l(file);
    }

    @Override // com.byazt.jlt.hp
    public boolean hp(String str, Dialog dialog) {
        if (TextUtils.isEmpty(str) || this.f21439l.get() == null || !str.startsWith("#oncall#")) {
            return false;
        }
        return hp(this.f21439l.get(), str, dialog);
    }

    @Override // com.byazt.jlt.hp
    public boolean hp(com.byazt.qt.a aVar, String str, Dialog dialog) {
        com.byazt.bl.jx jxVarHp = j.hp();
        if (jxVarHp == null || !TextUtils.equals(aVar.getId(), jxVarHp.getId()) || !TextUtils.equals(aVar.getName(), jxVarHp.getName())) {
            return false;
        }
        aVar.getName();
        aVar.getId();
        if (this.f21440w) {
            if (this.f21438j != null) {
                return true;
            }
            String string = UUID.randomUUID().toString();
            this.f21438j = string;
            hp(string, str);
            hp(this.f21438j);
            return true;
        }
        return hp(this.f21439l.get(), str, dialog);
    }

    private void hp(String str) {
        try {
            Context context = this.f21439l.get();
            if (context == null) {
                return;
            }
            ((ClipboardManager) context.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(null, str));
        } catch (Throwable unused) {
        }
    }

    public boolean hp(Context context, final String str, Dialog dialog) {
        try {
            if (this.f21438j == null) {
                this.f21438j = UUID.randomUUID().toString();
            }
            if (dialog != null) {
                dialog.dismiss();
            }
            new AlertDialog.Builder(context).setPositiveButton("确定", new DialogInterface.OnClickListener() { // from class: com.byazt.jde.w.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    if (dialogInterface != null) {
                        dialogInterface.dismiss();
                    }
                    w wVar = w.this;
                    wVar.hp(wVar.f21438j, str);
                }
            }).setNegativeButton("取消", new DialogInterface.OnClickListener() { // from class: com.byazt.jde.w.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                }
            }).setMessage(this.jx.j() + "\n\n您此次反馈的id为：" + this.f21438j).setCancelable(true).create().show();
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final String str, final String str2) {
        l("反馈上传中，请您稍等！");
        com.byazt.uid.w.l(new com.byazt.uid.eb("upload_oncall") { // from class: com.byazt.jde.w.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    w.this.l(str, str2);
                } catch (Throwable unused) {
                }
            }
        });
    }

    public static void hp(Context context, com.byazt.ih.l lVar, mp mpVar) {
        if (lVar == null || mpVar == null) {
            return;
        }
        boolean zUb = sz.l().ub();
        j jVarGh = sz.l().gh();
        if (jVarGh == null || TextUtils.isEmpty(jVarGh.jx())) {
            return;
        }
        if (jVarGh.l() || zUb) {
            lVar.addInterceptor(new w(mpVar, context, jVarGh, zUb));
        }
    }
}
