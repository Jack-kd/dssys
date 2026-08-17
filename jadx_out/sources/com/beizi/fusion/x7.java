package com.beizi.fusion;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class x7 implements gp, Cloneable {

    /* renamed from: e, reason: collision with root package name */
    public static final x7 f17436e = new x7();

    /* renamed from: a, reason: collision with root package name */
    private int f17437a = MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_DECLARE_LENGTH;

    /* renamed from: b, reason: collision with root package name */
    private boolean f17438b = true;

    /* renamed from: c, reason: collision with root package name */
    private List f17439c;

    /* renamed from: d, reason: collision with root package name */
    private List f17440d;

    public x7() {
        List list = Collections.EMPTY_LIST;
        this.f17439c = list;
        this.f17440d = list;
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public x7 m46clone() {
        try {
            return (x7) super.clone();
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }
}
