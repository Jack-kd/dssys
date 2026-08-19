package com.byazt.mg;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;

@com.byazt.kj.hp(hp = {0, 1, 790, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s {
    public static final Set<String> hp = new HashSet();

    /* renamed from: l, reason: collision with root package name */
    public static final Set<String> f23009l = new HashSet();

    /* renamed from: a, reason: collision with root package name */
    public int f23010a;
    public final int eb;

    /* renamed from: j, reason: collision with root package name */
    public final int f23011j;
    public final ArrayList<hp> jx;

    /* renamed from: w, reason: collision with root package name */
    public int f23012w = -1;

    @com.byazt.kj.hp(hp = {0, 1, 790, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_ERROR})
    public class hp {
        public final String hp;

        /* renamed from: l, reason: collision with root package name */
        public int f23013l;

        public hp(String str) {
            this.hp = str;
        }

        public void hp() {
            s.hp.add(this.hp);
        }

        public void l() {
            s.f23009l.add(this.hp);
        }

        public String toString() {
            return this.hp;
        }
    }

    public s(List<String> list) {
        if (list.isEmpty()) {
            throw new IllegalArgumentException("urls can't be empty");
        }
        int size = list.size();
        this.f23011j = size;
        this.jx = new ArrayList<>(size);
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        for (String str : list) {
            hp hpVar = new hp(str);
            if (hp.contains(str)) {
                arrayList2 = arrayList2 == null ? new ArrayList() : arrayList2;
                arrayList2.add(hpVar);
            } else if (f23009l.contains(str)) {
                arrayList = arrayList == null ? new ArrayList() : arrayList;
                arrayList.add(hpVar);
            } else {
                this.jx.add(hpVar);
            }
        }
        if (arrayList != null) {
            this.jx.addAll(arrayList);
        }
        if (arrayList2 != null) {
            this.jx.addAll(arrayList2);
        }
        Integer num = j.f22983j;
        this.eb = (num == null || num.intValue() <= 0) ? this.f23011j >= 2 ? 1 : 2 : num.intValue();
    }

    public boolean hp() {
        return this.f23010a < this.eb;
    }

    public hp l() {
        if (!hp()) {
            throw new NoSuchElementException();
        }
        int i2 = this.f23012w + 1;
        if (i2 >= this.f23011j - 1) {
            this.f23012w = -1;
            this.f23010a++;
        } else {
            this.f23012w = i2;
        }
        hp hpVar = this.jx.get(i2);
        hpVar.f23013l = (this.f23010a * this.f23011j) + this.f23012w;
        return hpVar;
    }
}
