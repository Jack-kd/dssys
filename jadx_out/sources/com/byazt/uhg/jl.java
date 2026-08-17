package com.byazt.uhg;

import android.os.Bundle;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_OFFER_SEND_TIME, 19})
/* loaded from: classes3.dex */
public class jl extends s implements Cloneable {

    /* renamed from: s, reason: collision with root package name */
    public static final List<zy> f26200s = com.byazt.ndb.e.hp(zy.HTTP_2, zy.HTTP_1_1);

    /* renamed from: a, reason: collision with root package name */
    public long f26201a;

    /* renamed from: e, reason: collision with root package name */
    public Set<String> f26202e;
    public TimeUnit eb;
    public com.byazt.efq.hp gu;
    public List<q> hp;

    /* renamed from: j, reason: collision with root package name */
    public long f26203j;
    public TimeUnit jx;

    /* renamed from: l, reason: collision with root package name */
    public long f26204l;

    /* renamed from: q, reason: collision with root package name */
    public List<zy> f26205q;

    /* renamed from: w, reason: collision with root package name */
    public TimeUnit f26206w;

    public jl() {
        this(new hp());
    }

    public j hp() {
        return null;
    }

    public hp l() {
        return new hp(this);
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_OFFER_SEND_TIME, 757})
    public static final class hp {

        /* renamed from: a, reason: collision with root package name */
        public TimeUnit f26207a;

        /* renamed from: e, reason: collision with root package name */
        public Set<String> f26208e;
        public long eb;
        public Bundle gu;
        public final List<q> hp;

        /* renamed from: j, reason: collision with root package name */
        public TimeUnit f26209j;
        public long jx;

        /* renamed from: l, reason: collision with root package name */
        public com.byazt.efq.hp f26210l;

        /* renamed from: q, reason: collision with root package name */
        public List<zy> f26211q;

        /* renamed from: s, reason: collision with root package name */
        public TimeUnit f26212s;

        /* renamed from: w, reason: collision with root package name */
        public long f26213w;

        public hp() {
            this.hp = new ArrayList();
            this.jx = 10000L;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.f26209j = timeUnit;
            this.f26213w = 10000L;
            this.f26207a = timeUnit;
            this.eb = 10000L;
            this.f26212s = timeUnit;
        }

        public hp hp(long j2, TimeUnit timeUnit) {
            this.jx = j2;
            this.f26209j = timeUnit;
            return this;
        }

        public hp jx(long j2, TimeUnit timeUnit) {
            this.eb = j2;
            this.f26212s = timeUnit;
            return this;
        }

        public hp l(long j2, TimeUnit timeUnit) {
            this.f26213w = j2;
            this.f26207a = timeUnit;
            return this;
        }

        public hp hp(com.byazt.efq.hp hpVar) {
            this.f26210l = hpVar;
            return this;
        }

        public hp hp(q qVar) {
            this.hp.add(qVar);
            return this;
        }

        public hp hp(Set<String> set) {
            this.f26208e = set;
            return this;
        }

        public hp hp(List<zy> list) {
            ArrayList arrayList = new ArrayList(list);
            if (arrayList.contains(zy.HTTP_1_1)) {
                if (!arrayList.contains(zy.HTTP_1_0)) {
                    if (!arrayList.contains(null)) {
                        arrayList.remove(zy.SPDY_3);
                        this.f26211q = Collections.unmodifiableList(arrayList);
                        return this;
                    }
                    throw new IllegalArgumentException("protocols must not contain null");
                }
                throw new IllegalArgumentException("protocols must not contain http/1.0: ".concat(String.valueOf(arrayList)));
            }
            throw new IllegalArgumentException("protocols doesn't contain http/1.1: ".concat(String.valueOf(arrayList)));
        }

        public hp(String str) {
            this.hp = new ArrayList();
            this.jx = 10000L;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.f26209j = timeUnit;
            this.f26213w = 10000L;
            this.f26207a = timeUnit;
            this.eb = 10000L;
            this.f26212s = timeUnit;
            this.f26211q = jl.f26200s;
        }

        public hp hp(Bundle bundle) {
            this.gu = bundle;
            return this;
        }

        public jl hp() {
            if (com.byazt.nml.hp.hp().l()) {
                return com.byazt.nml.hp.l(this);
            }
            return com.byazt.nml.hp.hp(this);
        }

        public hp(jl jlVar) {
            this.hp = new ArrayList();
            this.jx = 10000L;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.f26209j = timeUnit;
            this.f26213w = 10000L;
            this.f26207a = timeUnit;
            this.eb = 10000L;
            this.f26212s = timeUnit;
            this.jx = jlVar.f26204l;
            this.f26209j = jlVar.jx;
            this.f26213w = jlVar.f26203j;
            this.f26207a = jlVar.f26206w;
            this.eb = jlVar.f26201a;
            this.f26212s = jlVar.eb;
            this.f26211q = jlVar.f26205q;
            this.f26208e = jlVar.f26202e;
        }
    }

    public jl(hp hpVar) {
        this.f26204l = hpVar.jx;
        this.f26203j = hpVar.f26213w;
        this.f26201a = hpVar.eb;
        this.jx = hpVar.f26209j;
        this.f26206w = hpVar.f26207a;
        this.eb = hpVar.f26212s;
        this.hp = hpVar.hp;
        this.f26205q = hpVar.f26211q;
        this.f26202e = hpVar.f26208e;
        this.gu = hpVar.f26210l;
    }

    public l hp(k kVar) {
        return null;
    }
}
