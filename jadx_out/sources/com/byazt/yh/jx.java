package com.byazt.yh;

import android.content.Context;
import com.byazt.nf.UGTextView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.ccg.a;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_MPD_PACKET_RECV_TIME, 30})
/* loaded from: classes3.dex */
public class jx extends com.byazt.nf.l {
    public String ad;

    /* renamed from: h, reason: collision with root package name */
    public String f27948h;
    public String pg;
    public String xv;

    /* renamed from: z, reason: collision with root package name */
    public String f27949z;

    public jx(Context context) {
        super(context);
    }

    public void gu(String str) {
        ((UGTextView) this.f27788w).setText(str);
        try {
            float fMeasureText = ((UGTextView) this.f27788w).getPaint().measureText(str);
            if (fMeasureText >= 0.0f) {
                j((int) fMeasureText);
            }
        } catch (Throwable unused) {
        }
    }

    public void hp(int i2, int i3, int i4, boolean z2, boolean z3) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("remain", i2);
            jSONObject.put(a.f49746H, i3);
            jSONObject.put("count", i4);
            Matcher matcher = Pattern.compile("\\$\\{([^}]+)\\}").matcher(z2 ? i3 == 1 ? this.f27948h : this.ad : z3 ? this.pg : this.xv);
            StringBuffer stringBuffer = new StringBuffer();
            while (matcher.find()) {
                matcher.appendReplacement(stringBuffer, Matcher.quoteReplacement(jSONObject.optString(matcher.group(1), "")));
            }
            matcher.appendTail(stringBuffer);
            String string = stringBuffer.toString();
            this.f27949z = string;
            gu(string);
        } catch (JSONException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // com.byazt.nf.l, com.byazt.xs.jx
    public void l() {
        super.l();
        gu(((com.byazt.nf.l) this).hp);
        ((UGTextView) this.f27788w).setGravity(17);
    }

    @Override // com.byazt.nf.l, com.byazt.xs.jx
    public void hp(String str, String str2) {
        super.hp(str, str2);
        str.getClass();
        switch (str) {
            case "text1":
                this.xv = str2;
                break;
            case "text2":
                this.pg = str2;
                break;
            case "text3":
                this.f27948h = str2;
                break;
            case "text4":
                this.ad = str2;
                break;
        }
    }
}
