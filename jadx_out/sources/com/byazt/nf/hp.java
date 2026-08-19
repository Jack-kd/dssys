package com.byazt.nf;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.xs.jx;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AVNOSYNC_REPORT_THRES, 28})
/* loaded from: classes3.dex */
public class hp extends jx<RichTextView> {
    public int ad;
    public int db;
    public int gb;

    /* renamed from: h, reason: collision with root package name */
    public int f23562h;
    public String hp;
    public String pg;
    public float xv;

    /* renamed from: z, reason: collision with root package name */
    public String f23563z;

    public hp(Context context) {
        super(context);
        this.f23562h = Integer.MAX_VALUE;
        this.db = 2;
    }

    private int gu(String str) {
        str.getClass();
        switch (str) {
            case "center":
                return 17;
            case "left":
                return 3;
            case "right":
                return 5;
            default:
                return 2;
        }
    }

    @Override // com.byazt.xs.jx
    /* renamed from: eb, reason: merged with bridge method [inline-methods] */
    public RichTextView hp() {
        RichTextView richTextView = new RichTextView(this.f27777l);
        richTextView.hp(this);
        return richTextView;
    }

    @Override // com.byazt.xs.jx
    public void l() throws JSONException {
        super.l();
        ((RichTextView) this.f27788w).setRichText(this.hp);
        ((RichTextView) this.f27788w).setTextSize(1, this.xv);
        ((RichTextView) this.f27788w).setTextColor(this.gb);
        ((RichTextView) this.f27788w).setLines(this.ad);
        ((RichTextView) this.f27788w).setMaxLines(this.f23562h);
        ((RichTextView) this.f27788w).setGravity(this.db);
    }

    @Override // com.byazt.xs.jx
    public void hp(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        super.hp(str, str2);
        str.getClass();
        switch (str) {
            case "textAlign":
                this.db = gu(str2);
                break;
            case "textColor":
                this.gb = com.byazt.xa.hp.hp(str2);
                break;
            case "textStyle":
                this.pg = str2;
                break;
            case "textSize":
                this.xv = Float.parseFloat(str2);
                break;
            case "text":
                this.hp = str2;
                break;
            case "lines":
                this.ad = Integer.parseInt(str2);
                break;
            case "maxLines":
                this.f23562h = Integer.parseInt(str2);
                break;
            case "ellipsize":
                this.f23563z = str2;
                break;
        }
    }
}
