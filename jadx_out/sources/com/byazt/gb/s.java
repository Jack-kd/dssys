package com.byazt.gb;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 861, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes2.dex */
public class s extends Exception {
    public Throwable hp;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public int f20371l;

    public s(String str, eb ebVar, Throwable th) {
        String str2;
        String str3;
        StringBuilder sb = new StringBuilder();
        String str4 = "";
        if (str == null) {
            str2 = "";
        } else {
            str2 = str + " ";
        }
        sb.append(str2);
        if (ebVar == null) {
            str3 = "";
        } else {
            str3 = "(position:" + ebVar.j() + ") ";
        }
        sb.append(str3);
        if (th != null) {
            str4 = "caused by: " + th;
        }
        sb.append(str4);
        super(sb.toString());
        this.f20371l = -1;
        this.jx = -1;
        if (ebVar != null) {
            this.f20371l = ebVar.jx();
            this.jx = ebVar.a();
        }
        this.hp = th;
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        if (this.hp == null) {
            super.printStackTrace();
            return;
        }
        synchronized (System.err) {
            System.err.println(super.getMessage() + "; nested exception is:");
        }
    }
}
