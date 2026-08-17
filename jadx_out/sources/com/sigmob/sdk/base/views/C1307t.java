package com.sigmob.sdk.base.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.view.View;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import okhttp3.internal.ws.WebSocketProtocol;

/* renamed from: com.sigmob.sdk.base.views.t, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1307t extends View {

    /* renamed from: a, reason: collision with root package name */
    Paint f37190a;

    /* renamed from: b, reason: collision with root package name */
    private final float f37191b;

    public C1307t(Context context, float f2) {
        super(context);
        this.f37190a = new Paint();
        this.f37191b = f2;
    }

    public float a(int i2) {
        return (float) Math.cos((i2 * 3.141592653589793d) / 180.0d);
    }

    public float b(int i2) {
        return (float) Math.sin((i2 * 3.141592653589793d) / 180.0d);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Path pathB;
        super.onDraw(canvas);
        int height = getHeight();
        int i2 = (int) this.f37191b;
        float f2 = height;
        float f3 = f2 / 3.0f;
        float fB = (b(18) * f3) / b(WebSocketProtocol.PAYLOAD_SHORT);
        boolean z2 = true;
        this.f37190a.setAntiAlias(true);
        this.f37190a.setColor(Color.parseColor("#FFA500"));
        for (int i3 = i2; i3 > 0; i3--) {
            if (z2) {
                canvas.translate(f3 + 2.0f, f2 / 2.0f);
                z2 = false;
            } else {
                canvas.rotate(18.0f);
                canvas.translate(2.2f * f3, 0.0f);
            }
            canvas.rotate(-18.0f);
            Path pathB2 = b(f3, fB);
            this.f37190a.setStyle(Paint.Style.STROKE);
            canvas.drawPath(pathB2, this.f37190a);
            this.f37190a.setStyle(Paint.Style.FILL);
            canvas.drawPath(pathB2, this.f37190a);
        }
        float f4 = this.f37191b;
        float f5 = i2;
        if (f4 > f5) {
            float f6 = (f4 - f5) + 0.25f;
            if (f6 >= 1.0f) {
                canvas.rotate(18.0f);
                canvas.translate(f3 * 2.2f, 0.0f);
                canvas.rotate(-18.0f);
                pathB = b(f3, fB);
                this.f37190a.setStyle(Paint.Style.STROKE);
                this.f37190a.setColor(Color.parseColor("#FFA500"));
                canvas.drawPath(pathB, this.f37190a);
            } else {
                canvas.rotate(18.0f);
                if (f6 >= 0.5f) {
                    canvas.translate(f3 * 2.2f, 0.0f);
                    canvas.rotate(-18.0f);
                    Path pathB3 = b(f3, fB);
                    this.f37190a.setColor(Color.parseColor("#FFA500"));
                    this.f37190a.setStyle(Paint.Style.STROKE);
                    canvas.drawPath(pathB3, this.f37190a);
                    pathB = a(f3, fB);
                    this.f37190a.setColor(Color.parseColor("#FFA500"));
                } else {
                    canvas.translate(f3 * 2.2f, 0.0f);
                    canvas.rotate(-18.0f);
                    pathB = b(f3, fB);
                    this.f37190a.setStyle(Paint.Style.STROKE);
                    this.f37190a.setColor(Color.parseColor("#FFA500"));
                    canvas.drawPath(pathB, this.f37190a);
                }
            }
            this.f37190a.setStyle(Paint.Style.FILL);
            canvas.drawPath(pathB, this.f37190a);
        }
        for (int i4 = (int) (5.0f - this.f37191b); i4 > 0; i4--) {
            canvas.rotate(18.0f);
            canvas.translate(f3 * 2.2f, 0.0f);
            canvas.rotate(-18.0f);
            Path pathB4 = b(f3, fB);
            this.f37190a.setStyle(Paint.Style.STROKE);
            this.f37190a.setColor(Color.parseColor("#FFA500"));
            canvas.drawPath(pathB4, this.f37190a);
        }
    }

    private Path a(float f2, float f3) {
        Path path = new Path();
        path.moveTo(a(MediaPlayer.MEDIA_PLAYER_OPTION_UPDATE_TIMESTAMP_MODE) * f2, b(MediaPlayer.MEDIA_PLAYER_OPTION_UPDATE_TIMESTAMP_MODE) * f2);
        path.lineTo(a(108) * f3, b(108) * f3);
        path.lineTo(a(MediaPlayer.MEDIA_PLAYER_OPTION_SPADE) * f2, b(MediaPlayer.MEDIA_PLAYER_OPTION_SPADE) * f2);
        path.lineTo(a(180) * f3, b(180) * f3);
        path.lineTo(a(MediaPlayer.MEDIA_PLAYER_OPTION_MEDIACODEC_DROP_NONREF) * f2, f2 * b(MediaPlayer.MEDIA_PLAYER_OPTION_MEDIACODEC_DROP_NONREF));
        path.lineTo(a(MediaPlayer.MEDIA_PLAYER_OPTION_HW_DEC_DROP_NON_REF) * f3, f3 * b(MediaPlayer.MEDIA_PLAYER_OPTION_HW_DEC_DROP_NON_REF));
        path.close();
        return path;
    }

    private Path b(float f2, float f3) {
        Path path = new Path();
        path.moveTo(a(0) * f2, b(0) * f2);
        path.lineTo(a(36) * f3, b(36) * f3);
        path.lineTo(a(72) * f2, b(72) * f2);
        path.lineTo(a(108) * f3, b(108) * f3);
        path.lineTo(a(MediaPlayer.MEDIA_PLAYER_OPTION_SPADE) * f2, b(MediaPlayer.MEDIA_PLAYER_OPTION_SPADE) * f2);
        path.lineTo(a(180) * f3, b(180) * f3);
        path.lineTo(a(MediaPlayer.MEDIA_PLAYER_OPTION_MEDIACODEC_DROP_NONREF) * f2, b(MediaPlayer.MEDIA_PLAYER_OPTION_MEDIACODEC_DROP_NONREF) * f2);
        path.lineTo(a(MediaPlayer.MEDIA_PLAYER_OPTION_HW_DEC_DROP_NON_REF) * f3, b(MediaPlayer.MEDIA_PLAYER_OPTION_HW_DEC_DROP_NON_REF) * f3);
        path.lineTo(a(MediaPlayer.MEDIA_PLAYER_OPTION_UPDATE_TIMESTAMP_MODE) * f2, f2 * b(MediaPlayer.MEDIA_PLAYER_OPTION_UPDATE_TIMESTAMP_MODE));
        path.lineTo(a(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FLV_ABR) * f3, f3 * b(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FLV_ABR));
        path.close();
        return path;
    }
}
