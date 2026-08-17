package com.byazt.xci;

import android.util.SparseArray;
import android.view.View;
import com.byazt.go.j;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 45})
/* loaded from: classes3.dex */
public class e {

    /* renamed from: b, reason: collision with root package name */
    public String f27234b;
    public int di;
    public String ec;

    /* renamed from: k, reason: collision with root package name */
    public View f27237k;

    /* renamed from: n, reason: collision with root package name */
    public String f27239n;

    /* renamed from: v, reason: collision with root package name */
    public boolean f27244v;
    public View zy;
    public float hp = -1.0f;

    /* renamed from: l, reason: collision with root package name */
    public float f27238l = -1.0f;
    public float jx = -1.0f;

    /* renamed from: j, reason: collision with root package name */
    public float f27236j = -1.0f;

    /* renamed from: w, reason: collision with root package name */
    public long f27245w = -1;

    /* renamed from: a, reason: collision with root package name */
    public long f27233a = -1;
    public int eb = -1;

    /* renamed from: s, reason: collision with root package name */
    public int f27242s = -1;

    /* renamed from: q, reason: collision with root package name */
    public int f27241q = -1024;

    /* renamed from: e, reason: collision with root package name */
    public boolean f27235e = true;
    public int gu = 0;
    public int jl = 0;

    /* renamed from: u, reason: collision with root package name */
    public byte f27243u = 0;
    public byte xs = -1;
    public boolean vv = false;
    public int sz = -1;
    public SparseArray<j.hp> ns = new SparseArray<>();
    public List<Integer> cx = new ArrayList();

    /* renamed from: o, reason: collision with root package name */
    public boolean f27240o = false;

    public int a() {
        return this.f27242s;
    }

    public String b() {
        return this.f27234b;
    }

    public String cx() {
        return this.f27239n;
    }

    public View e() {
        return this.f27237k;
    }

    public int eb() {
        return this.f27241q;
    }

    public float ec() {
        return this.jx;
    }

    public int gu() {
        return this.gu;
    }

    public void hp(boolean z2) {
        this.f27240o = z2;
    }

    public boolean j() {
        return this.di == 2;
    }

    public int jl() {
        return this.jl;
    }

    public byte jx() {
        return this.xs;
    }

    public List<Integer> k() {
        return this.cx;
    }

    public byte l() {
        return this.f27243u;
    }

    public String n() {
        return this.ec;
    }

    public int ns() {
        return this.sz;
    }

    public View q() {
        return this.zy;
    }

    public boolean s() {
        return this.f27235e;
    }

    public float sz() {
        return this.f27236j;
    }

    public long u() {
        return this.f27233a;
    }

    public long v() {
        return this.f27245w;
    }

    public float vv() {
        return this.f27238l;
    }

    public int w() {
        return this.eb;
    }

    public float xs() {
        return this.hp;
    }

    public SparseArray<j.hp> zy() {
        return this.ns;
    }

    public void a(int i2) {
        this.jl = i2;
    }

    public void eb(int i2) {
        this.sz = i2;
    }

    public boolean hp() {
        return this.f27240o;
    }

    public void j(int i2) {
        this.f27241q = i2;
    }

    public void jx(int i2) {
        this.f27242s = i2;
    }

    public void l(byte b3) {
        this.xs = b3;
    }

    public void w(int i2) {
        this.gu = i2;
    }

    public void hp(byte b3) {
        this.f27243u = b3;
    }

    public void j(float f2) {
        this.f27236j = f2;
    }

    public void jx(float f2) {
        this.jx = f2;
    }

    public void l(int i2) {
        this.eb = i2;
    }

    public void hp(int i2) {
        this.di = i2;
    }

    public void j(boolean z2) {
        this.vv = z2;
    }

    public void jx(boolean z2) {
        this.f27244v = z2;
    }

    public void l(boolean z2) {
        this.f27235e = z2;
    }

    public void hp(View view) {
        this.zy = (View) new WeakReference(view).get();
    }

    public void jx(String str) {
        this.f27234b = str;
    }

    public void l(View view) {
        this.f27237k = (View) new WeakReference(view).get();
    }

    public void hp(SparseArray<j.hp> sparseArray) {
        this.ns = sparseArray;
    }

    public void l(long j2) {
        this.f27233a = j2;
    }

    public void hp(long j2) {
        this.f27245w = j2;
    }

    public void l(float f2) {
        this.f27238l = f2;
    }

    public void hp(float f2) {
        this.hp = f2;
    }

    public void l(String str) {
        this.f27239n = str;
    }

    public void hp(String str) {
        this.ec = str;
    }
}
