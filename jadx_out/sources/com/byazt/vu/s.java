package com.byazt.vu;

import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, 874, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s extends hp {

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.oyr.l f26700a;

    /* renamed from: e, reason: collision with root package name */
    public long f26701e;
    public long gu;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.pjc.l f26702j;
    public Map<String, String> jl;

    /* renamed from: k, reason: collision with root package name */
    public boolean f26703k;

    /* renamed from: q, reason: collision with root package name */
    public long f26704q;

    /* renamed from: u, reason: collision with root package name */
    public com.byazt.qt.l f26706u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f26707v;
    public long vv;
    public String xs;
    public String zy;

    /* renamed from: w, reason: collision with root package name */
    public boolean f26708w = false;
    public boolean eb = false;

    /* renamed from: s, reason: collision with root package name */
    public boolean f26705s = false;
    public AtomicBoolean ec = new AtomicBoolean(false);

    public s(mp mpVar, boolean z2) {
        this.f26679l = mpVar;
        this.f26703k = z2;
    }

    public boolean a() {
        return this.eb;
    }

    public boolean e() {
        return this.f26705s;
    }

    public long eb() {
        return this.f26704q;
    }

    public boolean gu() {
        return this.f26703k;
    }

    @Override // com.byazt.vu.hp
    public int hp() {
        return this.hp;
    }

    public com.byazt.pjc.l j() {
        return this.f26702j;
    }

    public com.byazt.qt.l jl() {
        return this.f26706u;
    }

    public void jx(long j2) {
        this.f26701e = j2;
    }

    public long k() {
        return this.vv;
    }

    @Override // com.byazt.vu.hp
    public mp l() {
        return this.f26679l;
    }

    public Map<String, String> q() {
        return this.jl;
    }

    public long s() {
        return this.gu;
    }

    public boolean v() {
        return this.ec.get();
    }

    public boolean w() {
        return this.f26708w;
    }

    public String zy() {
        return this.xs;
    }

    @Override // com.byazt.vu.hp
    public void hp(int i2) {
        this.hp = i2;
    }

    public void j(long j2) {
        this.gu = j2;
    }

    public void jx(boolean z2) {
        this.f26705s = z2;
    }

    public void l(boolean z2) {
        this.eb = z2;
    }

    public void w(long j2) {
        this.vv = j2;
    }

    @Override // com.byazt.vu.hp
    public void hp(mp mpVar) {
        this.f26679l = mpVar;
    }

    public void j(boolean z2) {
        this.f26707v = z2;
    }

    public void l(long j2) {
        this.f26704q = j2;
    }

    public void w(boolean z2) {
        this.ec.set(z2);
    }

    public void hp(boolean z2) {
        this.f26708w = z2;
    }

    public void l(String str) {
        this.xs = str;
    }

    public void hp(com.byazt.oyr.l lVar) {
        this.f26700a = lVar;
    }

    public void hp(Map<String, String> map) {
        this.jl = map;
    }

    public void hp(String str) {
        this.zy = str;
    }

    public s(com.byazt.pjc.l lVar, mp mpVar, boolean z2) {
        this.f26702j = lVar;
        this.f26679l = mpVar;
        this.f26703k = z2;
    }

    public void hp(com.byazt.qt.l lVar) {
        this.f26706u = lVar;
    }
}
