package com.byazt.fjm;

import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import com.byazt.fjm.RecyclerView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w extends RecyclerView.q implements RecyclerView.ec.l {

    /* renamed from: a, reason: collision with root package name */
    public j f20034a;

    /* renamed from: b, reason: collision with root package name */
    public final l f20035b;
    public boolean cx;
    public int di;
    public final hp eb;
    public boolean ec;
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public int f20036j;
    public boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public s f20037l;

    /* renamed from: n, reason: collision with root package name */
    public boolean f20038n;
    public boolean ns;
    public boolean sz;
    public jx vv;

    /* renamed from: w, reason: collision with root package name */
    public int f20039w;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 8})
    public static class hp {
        public s hp;

        /* renamed from: j, reason: collision with root package name */
        public boolean f20040j;
        public int jx;

        /* renamed from: l, reason: collision with root package name */
        public int f20041l;

        /* renamed from: w, reason: collision with root package name */
        public boolean f20042w;

        public hp() {
            hp();
        }

        public void hp() {
            this.f20041l = -1;
            this.jx = Integer.MIN_VALUE;
            this.f20040j = false;
            this.f20042w = false;
        }

        public void l() {
            this.jx = this.f20040j ? this.hp.j() : this.hp.jx();
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.f20041l + ", mCoordinate=" + this.jx + ", mLayoutFromEnd=" + this.f20040j + ", mValid=" + this.f20042w + '}';
        }

        public void l(View view, int i2) {
            if (this.f20040j) {
                this.jx = this.hp.l(view) + this.hp.l();
            } else {
                this.jx = this.hp.hp(view);
            }
            this.f20041l = i2;
        }

        public boolean hp(View view, RecyclerView.sz szVar) {
            RecyclerView.e eVar = (RecyclerView.e) view.getLayoutParams();
            return !eVar.l() && eVar.j() >= 0 && eVar.j() < szVar.j();
        }

        public void hp(View view, int i2) {
            int iL = this.hp.l();
            if (iL >= 0) {
                l(view, i2);
                return;
            }
            this.f20041l = i2;
            if (this.f20040j) {
                int iJ = (this.hp.j() - iL) - this.hp.l(view);
                this.jx = this.hp.j() - iJ;
                if (iJ > 0) {
                    int iW = this.jx - this.hp.w(view);
                    int iJx = this.hp.jx();
                    int iMin = iW - (iJx + Math.min(this.hp.hp(view) - iJx, 0));
                    if (iMin < 0) {
                        this.jx += Math.min(iJ, -iMin);
                        return;
                    }
                    return;
                }
                return;
            }
            int iHp = this.hp.hp(view);
            int iJx2 = iHp - this.hp.jx();
            this.jx = iHp;
            if (iJx2 > 0) {
                int iJ2 = (this.hp.j() - Math.min(0, (this.hp.j() - iL) - this.hp.l(view))) - (iHp + this.hp.w(view));
                if (iJ2 < 0) {
                    this.jx -= Math.min(iJx2, -iJ2);
                }
            }
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, MediaPlayer.MEDIA_PLAYER_OPTION_SUB_FIRST_LOAD_TIME})
    public static class j implements Parcelable {
        public static final Parcelable.Creator<j> CREATOR = new Parcelable.Creator<j>() { // from class: com.byazt.fjm.w.j.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public j createFromParcel(Parcel parcel) {
                return new j(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public j[] newArray(int i2) {
                return new j[i2];
            }
        };
        public int hp;
        public boolean jx;

        /* renamed from: l, reason: collision with root package name */
        public int f20043l;

        public j() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean hp() {
            return this.hp >= 0;
        }

        public void l() {
            this.hp = -1;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.hp);
            parcel.writeInt(this.f20043l);
            parcel.writeInt(this.jx ? 1 : 0);
        }

        public j(Parcel parcel) {
            this.hp = parcel.readInt();
            this.f20043l = parcel.readInt();
            this.jx = parcel.readInt() == 1;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 865})
    public static class jx {

        /* renamed from: a, reason: collision with root package name */
        public int f20044a;

        /* renamed from: e, reason: collision with root package name */
        public int f20045e;
        public int eb;

        /* renamed from: j, reason: collision with root package name */
        public int f20046j;
        public boolean jl;
        public int jx;

        /* renamed from: l, reason: collision with root package name */
        public int f20047l;

        /* renamed from: w, reason: collision with root package name */
        public int f20050w;
        public boolean hp = true;

        /* renamed from: s, reason: collision with root package name */
        public int f20049s = 0;

        /* renamed from: q, reason: collision with root package name */
        public boolean f20048q = false;
        public List<RecyclerView.cx> gu = null;

        private View l() {
            int size = this.gu.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = this.gu.get(i2).hp;
                RecyclerView.e eVar = (RecyclerView.e) view.getLayoutParams();
                if (!eVar.l() && this.f20046j == eVar.j()) {
                    hp(view);
                    return view;
                }
            }
            return null;
        }

        public boolean hp(RecyclerView.sz szVar) {
            int i2 = this.f20046j;
            return i2 >= 0 && i2 < szVar.j();
        }

        public View hp(RecyclerView.u uVar) {
            if (this.gu != null) {
                return l();
            }
            View viewL = uVar.l(this.f20046j);
            this.f20046j += this.f20050w;
            return viewL;
        }

        public void hp() {
            hp((View) null);
        }

        public View l(View view) {
            int iJ;
            int size = this.gu.size();
            View view2 = null;
            int i2 = Integer.MAX_VALUE;
            for (int i3 = 0; i3 < size; i3++) {
                View view3 = this.gu.get(i3).hp;
                RecyclerView.e eVar = (RecyclerView.e) view3.getLayoutParams();
                if (view3 != view && !eVar.l() && (iJ = (eVar.j() - this.f20046j) * this.f20050w) >= 0 && iJ < i2) {
                    if (iJ == 0) {
                        return view3;
                    }
                    view2 = view3;
                    i2 = iJ;
                }
            }
            return view2;
        }

        public void hp(View view) {
            View viewL = l(view);
            if (viewL == null) {
                this.f20046j = -1;
            } else {
                this.f20046j = ((RecyclerView.e) viewL.getLayoutParams()).j();
            }
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_ENABLE_DTLS})
    public static class l {
        public int hp;

        /* renamed from: j, reason: collision with root package name */
        public boolean f20051j;
        public boolean jx;

        /* renamed from: l, reason: collision with root package name */
        public boolean f20052l;

        public void hp() {
            this.hp = 0;
            this.f20052l = false;
            this.jx = false;
            this.f20051j = false;
        }
    }

    public w(Context context) {
        this(context, 1, false);
    }

    private void a(int i2, int i3) {
        this.vv.jx = this.f20037l.j() - i3;
        jx jxVar = this.vv;
        jxVar.f20050w = this.jx ? -1 : 1;
        jxVar.f20046j = i2;
        jxVar.f20044a = 1;
        jxVar.f20047l = i3;
        jxVar.eb = Integer.MIN_VALUE;
    }

    private int e(RecyclerView.sz szVar) {
        if (ec() == 0) {
            return 0;
        }
        a();
        return e.hp(szVar, this.f20037l, hp(!this.ns, true), l(!this.ns, true), this, this.ns);
    }

    private void eb(int i2, int i3) {
        this.vv.jx = i3 - this.f20037l.jx();
        jx jxVar = this.vv;
        jxVar.f20046j = i2;
        jxVar.f20050w = this.jx ? 1 : -1;
        jxVar.f20044a = -1;
        jxVar.f20047l = i3;
        jxVar.eb = Integer.MIN_VALUE;
    }

    private int gu(RecyclerView.sz szVar) {
        if (ec() == 0) {
            return 0;
        }
        a();
        return e.l(szVar, this.f20037l, hp(!this.ns, true), l(!this.ns, true), this, this.ns);
    }

    private View ky() {
        return s(this.jx ? 0 : ec() - 1);
    }

    private View pu() {
        return s(this.jx ? ec() - 1 : 0);
    }

    private int q(RecyclerView.sz szVar) {
        if (ec() == 0) {
            return 0;
        }
        a();
        return e.hp(szVar, this.f20037l, hp(!this.ns, true), l(!this.ns, true), this, this.ns, this.jx);
    }

    private void r() {
        if (this.hp == 1 || !w()) {
            this.jx = this.sz;
        } else {
            this.jx = !this.sz;
        }
    }

    @Override // com.byazt.fjm.RecyclerView.q
    public boolean hp() {
        return true;
    }

    @Override // com.byazt.fjm.RecyclerView.q
    public boolean j() {
        return this.hp == 1;
    }

    @Override // com.byazt.fjm.RecyclerView.q
    public boolean jl() {
        return this.f20034a == null && this.ec == this.f20038n;
    }

    @Override // com.byazt.fjm.RecyclerView.q
    public boolean jx() {
        return this.hp == 0;
    }

    @Override // com.byazt.fjm.RecyclerView.q
    public RecyclerView.e l() {
        return new RecyclerView.e(-2, -2);
    }

    @Override // com.byazt.fjm.RecyclerView.q
    public int s(RecyclerView.sz szVar) {
        return gu(szVar);
    }

    public boolean w() {
        return xs() == 1;
    }

    public w(Context context, int i2, boolean z2) {
        this.hp = 1;
        this.sz = false;
        this.jx = false;
        this.f20038n = false;
        this.ns = true;
        this.f20036j = -1;
        this.f20039w = Integer.MIN_VALUE;
        this.f20034a = null;
        this.eb = new hp();
        this.f20035b = new l();
        this.di = 2;
        hp(i2);
        hp(z2);
    }

    @Override // com.byazt.fjm.RecyclerView.q
    public void hp(RecyclerView recyclerView, RecyclerView.u uVar) {
        super.hp(recyclerView, uVar);
        if (this.cx) {
            jx(uVar);
            uVar.hp();
        }
    }

    @Override // com.byazt.fjm.RecyclerView.q
    public void j(int i2) {
        this.f20036j = i2;
        this.f20039w = Integer.MIN_VALUE;
        j jVar = this.f20034a;
        if (jVar != null) {
            jVar.l();
        }
        zy();
    }

    @Override // com.byazt.fjm.RecyclerView.ec.l
    public PointF jx(int i2) {
        if (ec() == 0) {
            return null;
        }
        int i3 = (i2 < j(s(0))) != this.jx ? -1 : 1;
        return this.hp == 0 ? new PointF(i3, 0.0f) : new PointF(0.0f, i3);
    }

    @Override // com.byazt.fjm.RecyclerView.q
    public View l(int i2) {
        int iEc = ec();
        if (iEc == 0) {
            return null;
        }
        int iJ = i2 - j(s(0));
        if (iJ >= 0 && iJ < iEc) {
            View viewS = s(iJ);
            if (j(viewS) == i2) {
                return viewS;
            }
        }
        return super.l(i2);
    }

    public boolean s() {
        return this.f20037l.s() == 0 && this.f20037l.w() == 0;
    }

    @Override // com.byazt.fjm.RecyclerView.q
    public int w(RecyclerView.sz szVar) {
        return e(szVar);
    }

    private View s(RecyclerView.u uVar, RecyclerView.sz szVar) {
        return hp(0, ec());
    }

    public int w(int i2) {
        return i2 != 1 ? i2 != 2 ? i2 != 17 ? i2 != 33 ? i2 != 66 ? (i2 == 130 && this.hp == 1) ? 1 : Integer.MIN_VALUE : this.hp == 0 ? 1 : Integer.MIN_VALUE : this.hp == 1 ? -1 : Integer.MIN_VALUE : this.hp == 0 ? -1 : Integer.MIN_VALUE : (this.hp != 1 && w()) ? -1 : 1 : (this.hp != 1 && w()) ? 1 : -1;
    }

    public int e() {
        View viewHp = hp(0, ec(), false, true);
        if (viewHp == null) {
            return -1;
        }
        return j(viewHp);
    }

    public int gu() {
        View viewHp = hp(ec() - 1, -1, false, true);
        if (viewHp == null) {
            return -1;
        }
        return j(viewHp);
    }

    @Override // com.byazt.fjm.RecyclerView.q
    public boolean q() {
        return (n() == 1073741824 || sz() == 1073741824 || !lv()) ? false : true;
    }

    private View q(RecyclerView.u uVar, RecyclerView.sz szVar) {
        return hp(ec() - 1, -1);
    }

    public void hp(int i2) {
        if (i2 != 0 && i2 != 1) {
            throw new IllegalArgumentException("invalid orientation:".concat(String.valueOf(i2)));
        }
        hp((String) null);
        if (i2 != this.hp || this.f20037l == null) {
            s sVarHp = s.hp(this, i2);
            this.f20037l = sVarHp;
            this.eb.hp = sVarHp;
            this.hp = i2;
            zy();
        }
    }

    @Override // com.byazt.fjm.RecyclerView.q
    public int jx(RecyclerView.sz szVar) {
        return q(szVar);
    }

    public void a() {
        if (this.vv == null) {
            this.vv = eb();
        }
    }

    public jx eb() {
        return new jx();
    }

    @Override // com.byazt.fjm.RecyclerView.q
    public int j(RecyclerView.sz szVar) {
        return q(szVar);
    }

    public int jx(int i2, RecyclerView.u uVar, RecyclerView.sz szVar) {
        if (ec() == 0 || i2 == 0) {
            return 0;
        }
        this.vv.hp = true;
        a();
        int i3 = i2 > 0 ? 1 : -1;
        int iAbs = Math.abs(i2);
        hp(i3, iAbs, true, szVar);
        jx jxVar = this.vv;
        int iHp = jxVar.eb + hp(uVar, jxVar, szVar, false);
        if (iHp < 0) {
            return 0;
        }
        if (iAbs > iHp) {
            i2 = i3 * iHp;
        }
        this.f20037l.hp(-i2);
        this.vv.f20045e = i2;
        return i2;
    }

    @Override // com.byazt.fjm.RecyclerView.q
    public void l(RecyclerView.sz szVar) {
        super.l(szVar);
        this.f20034a = null;
        this.f20036j = -1;
        this.f20039w = Integer.MIN_VALUE;
        this.eb.hp();
    }

    private View j(RecyclerView.u uVar, RecyclerView.sz szVar) {
        return hp(uVar, szVar, 0, ec(), szVar.j());
    }

    @Override // com.byazt.fjm.RecyclerView.q
    public int eb(RecyclerView.sz szVar) {
        return gu(szVar);
    }

    private View eb(RecyclerView.u uVar, RecyclerView.sz szVar) {
        return this.jx ? q(uVar, szVar) : s(uVar, szVar);
    }

    @Override // com.byazt.fjm.RecyclerView.q
    public int a(RecyclerView.sz szVar) {
        return e(szVar);
    }

    private View a(RecyclerView.u uVar, RecyclerView.sz szVar) {
        return this.jx ? s(uVar, szVar) : q(uVar, szVar);
    }

    private View w(RecyclerView.u uVar, RecyclerView.sz szVar) {
        return hp(uVar, szVar, ec() - 1, -1, szVar.j());
    }

    private void l(RecyclerView.u uVar, RecyclerView.sz szVar, int i2, int i3) {
        if (!szVar.l() || ec() == 0 || szVar.hp() || !jl()) {
            return;
        }
        List<RecyclerView.cx> listJx = uVar.jx();
        int size = listJx.size();
        int iJ = j(s(0));
        int iW = 0;
        int iW2 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            RecyclerView.cx cxVar = listJx.get(i4);
            if (!cxVar.xs()) {
                if ((cxVar.j() < iJ) != this.jx) {
                    iW += this.f20037l.w(cxVar.hp);
                } else {
                    iW2 += this.f20037l.w(cxVar.hp);
                }
            }
        }
        this.vv.gu = listJx;
        if (iW > 0) {
            eb(j(pu()), i2);
            jx jxVar = this.vv;
            jxVar.f20049s = iW;
            jxVar.jx = 0;
            jxVar.hp();
            hp(uVar, this.vv, szVar, false);
        }
        if (iW2 > 0) {
            a(j(ky()), i3);
            jx jxVar2 = this.vv;
            jxVar2.f20049s = iW2;
            jxVar2.jx = 0;
            jxVar2.hp();
            hp(uVar, this.vv, szVar, false);
        }
        this.vv.gu = null;
    }

    public void hp(boolean z2) {
        hp((String) null);
        if (z2 != this.sz) {
            this.sz = z2;
            zy();
        }
    }

    private View jx(RecyclerView.u uVar, RecyclerView.sz szVar) {
        return this.jx ? w(uVar, szVar) : j(uVar, szVar);
    }

    public int hp(RecyclerView.sz szVar) {
        if (szVar.jx()) {
            return this.f20037l.a();
        }
        return 0;
    }

    @Override // com.byazt.fjm.RecyclerView.q
    public void hp(RecyclerView recyclerView, RecyclerView.sz szVar, int i2) {
        a aVar = new a(recyclerView.getContext());
        aVar.jx(i2);
        hp(aVar);
    }

    @Override // com.byazt.fjm.RecyclerView.q
    public void hp(RecyclerView.u uVar, RecyclerView.sz szVar) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int iHp;
        int i7;
        View viewL;
        int iHp2;
        int iJ;
        if ((this.f20034a != null || this.f20036j != -1) && szVar.j() == 0) {
            jx(uVar);
            return;
        }
        j jVar = this.f20034a;
        if (jVar != null && jVar.hp()) {
            this.f20036j = this.f20034a.hp;
        }
        a();
        this.vv.hp = false;
        r();
        View viewWv = wv();
        hp hpVar = this.eb;
        if (hpVar.f20042w && this.f20036j == -1 && this.f20034a == null) {
            if (viewWv != null && (this.f20037l.hp(viewWv) >= this.f20037l.j() || this.f20037l.l(viewWv) <= this.f20037l.jx())) {
                this.eb.hp(viewWv, j(viewWv));
            }
        } else {
            hpVar.hp();
            hp hpVar2 = this.eb;
            hpVar2.f20040j = this.jx ^ this.f20038n;
            hp(uVar, szVar, hpVar2);
            this.eb.f20042w = true;
        }
        int iHp3 = hp(szVar);
        if (this.vv.f20045e >= 0) {
            i2 = iHp3;
            iHp3 = 0;
        } else {
            i2 = 0;
        }
        int iJx = iHp3 + this.f20037l.jx();
        int iEb = i2 + this.f20037l.eb();
        if (szVar.hp() && (i7 = this.f20036j) != -1 && this.f20039w != Integer.MIN_VALUE && (viewL = l(i7)) != null) {
            if (this.jx) {
                iJ = this.f20037l.j() - this.f20037l.l(viewL);
                iHp2 = this.f20039w;
            } else {
                iHp2 = this.f20037l.hp(viewL) - this.f20037l.jx();
                iJ = this.f20039w;
            }
            int i8 = iJ - iHp2;
            if (i8 > 0) {
                iJx += i8;
            } else {
                iEb -= i8;
            }
        }
        hp(uVar);
        this.vv.jl = s();
        this.vv.f20048q = szVar.hp();
        hp hpVar3 = this.eb;
        if (hpVar3.f20040j) {
            l(hpVar3);
            jx jxVar = this.vv;
            jxVar.f20049s = iJx;
            hp(uVar, jxVar, szVar, false);
            jx jxVar2 = this.vv;
            i4 = jxVar2.f20047l;
            int i9 = jxVar2.f20046j;
            int i10 = jxVar2.jx;
            if (i10 > 0) {
                iEb += i10;
            }
            hp(this.eb);
            jx jxVar3 = this.vv;
            jxVar3.f20049s = iEb;
            jxVar3.f20046j += jxVar3.f20050w;
            hp(uVar, jxVar3, szVar, false);
            jx jxVar4 = this.vv;
            i3 = jxVar4.f20047l;
            int i11 = jxVar4.jx;
            if (i11 > 0) {
                eb(i9, i4);
                jx jxVar5 = this.vv;
                jxVar5.f20049s = i11;
                hp(uVar, jxVar5, szVar, false);
                i4 = this.vv.f20047l;
            }
        } else {
            hp(hpVar3);
            jx jxVar6 = this.vv;
            jxVar6.f20049s = iEb;
            hp(uVar, jxVar6, szVar, false);
            jx jxVar7 = this.vv;
            i3 = jxVar7.f20047l;
            int i12 = jxVar7.f20046j;
            int i13 = jxVar7.jx;
            if (i13 > 0) {
                iJx += i13;
            }
            l(this.eb);
            jx jxVar8 = this.vv;
            jxVar8.f20049s = iJx;
            jxVar8.f20046j += jxVar8.f20050w;
            hp(uVar, jxVar8, szVar, false);
            jx jxVar9 = this.vv;
            i4 = jxVar9.f20047l;
            int i14 = jxVar9.jx;
            if (i14 > 0) {
                a(i12, i3);
                jx jxVar10 = this.vv;
                jxVar10.f20049s = i14;
                hp(uVar, jxVar10, szVar, false);
                i3 = this.vv.f20047l;
            }
        }
        if (ec() > 0) {
            if (this.jx ^ this.f20038n) {
                int iHp4 = hp(i3, uVar, szVar, true);
                i5 = i4 + iHp4;
                i6 = i3 + iHp4;
                iHp = l(i5, uVar, szVar, false);
            } else {
                int iL = l(i4, uVar, szVar, true);
                i5 = i4 + iL;
                i6 = i3 + iL;
                iHp = hp(i6, uVar, szVar, false);
            }
            i4 = i5 + iHp;
            i3 = i6 + iHp;
        }
        l(uVar, szVar, i4, i3);
        if (!szVar.hp()) {
            this.f20037l.hp();
        } else {
            this.eb.hp();
        }
        this.ec = this.f20038n;
    }

    private boolean l(RecyclerView.u uVar, RecyclerView.sz szVar, hp hpVar) {
        if (ec() == 0) {
            return false;
        }
        View viewWv = wv();
        if (viewWv != null && hpVar.hp(viewWv, szVar)) {
            hpVar.hp(viewWv, j(viewWv));
            return true;
        }
        if (this.ec != this.f20038n) {
            return false;
        }
        View viewL = hpVar.f20040j ? l(uVar, szVar) : jx(uVar, szVar);
        if (viewL == null) {
            return false;
        }
        hpVar.l(viewL, j(viewL));
        if (!szVar.hp() && jl() && (this.f20037l.hp(viewL) >= this.f20037l.j() || this.f20037l.l(viewL) < this.f20037l.jx())) {
            hpVar.jx = hpVar.f20040j ? this.f20037l.j() : this.f20037l.jx();
        }
        return true;
    }

    private int l(int i2, RecyclerView.u uVar, RecyclerView.sz szVar, boolean z2) {
        int iJx;
        int iJx2 = i2 - this.f20037l.jx();
        if (iJx2 <= 0) {
            return 0;
        }
        int i3 = -jx(iJx2, uVar, szVar);
        int i4 = i2 + i3;
        if (!z2 || (iJx = i4 - this.f20037l.jx()) <= 0) {
            return i3;
        }
        this.f20037l.hp(-iJx);
        return i3 - iJx;
    }

    private void l(hp hpVar) {
        eb(hpVar.f20041l, hpVar.jx);
    }

    @Override // com.byazt.fjm.RecyclerView.q
    public int l(int i2, RecyclerView.u uVar, RecyclerView.sz szVar) {
        if (this.hp == 0) {
            return 0;
        }
        return jx(i2, uVar, szVar);
    }

    private void l(RecyclerView.u uVar, int i2) {
        int iEc = ec();
        if (i2 >= 0) {
            int iW = this.f20037l.w() - i2;
            if (this.jx) {
                for (int i3 = 0; i3 < iEc; i3++) {
                    View viewS = s(i3);
                    if (this.f20037l.hp(viewS) < iW || this.f20037l.j(viewS) < iW) {
                        hp(uVar, 0, i3);
                        return;
                    }
                }
                return;
            }
            int i4 = iEc - 1;
            for (int i5 = i4; i5 >= 0; i5--) {
                View viewS2 = s(i5);
                if (this.f20037l.hp(viewS2) < iW || this.f20037l.j(viewS2) < iW) {
                    hp(uVar, i4, i5);
                    return;
                }
            }
        }
    }

    private View l(boolean z2, boolean z3) {
        int iEc;
        int iEc2;
        if (this.jx) {
            iEc = 0;
            iEc2 = ec();
        } else {
            iEc = ec() - 1;
            iEc2 = -1;
        }
        return hp(iEc, iEc2, z2, z3);
    }

    private View l(RecyclerView.u uVar, RecyclerView.sz szVar) {
        return this.jx ? j(uVar, szVar) : w(uVar, szVar);
    }

    private void hp(RecyclerView.u uVar, RecyclerView.sz szVar, hp hpVar) {
        if (hp(szVar, hpVar) || l(uVar, szVar, hpVar)) {
            return;
        }
        hpVar.l();
        hpVar.f20041l = this.f20038n ? szVar.j() - 1 : 0;
    }

    private boolean hp(RecyclerView.sz szVar, hp hpVar) {
        int i2;
        if (!szVar.hp() && (i2 = this.f20036j) != -1) {
            if (i2 >= 0 && i2 < szVar.j()) {
                hpVar.f20041l = this.f20036j;
                j jVar = this.f20034a;
                if (jVar != null && jVar.hp()) {
                    boolean z2 = this.f20034a.jx;
                    hpVar.f20040j = z2;
                    if (z2) {
                        hpVar.jx = this.f20037l.j() - this.f20034a.f20043l;
                    } else {
                        hpVar.jx = this.f20037l.jx() + this.f20034a.f20043l;
                    }
                    return true;
                }
                if (this.f20039w == Integer.MIN_VALUE) {
                    View viewL = l(this.f20036j);
                    if (viewL != null) {
                        if (this.f20037l.w(viewL) > this.f20037l.a()) {
                            hpVar.l();
                            return true;
                        }
                        if (this.f20037l.hp(viewL) - this.f20037l.jx() < 0) {
                            hpVar.jx = this.f20037l.jx();
                            hpVar.f20040j = false;
                            return true;
                        }
                        if (this.f20037l.j() - this.f20037l.l(viewL) < 0) {
                            hpVar.jx = this.f20037l.j();
                            hpVar.f20040j = true;
                            return true;
                        }
                        hpVar.jx = hpVar.f20040j ? this.f20037l.l(viewL) + this.f20037l.l() : this.f20037l.hp(viewL);
                    } else {
                        if (ec() > 0) {
                            hpVar.f20040j = (this.f20036j < j(s(0))) == this.jx;
                        }
                        hpVar.l();
                    }
                    return true;
                }
                boolean z3 = this.jx;
                hpVar.f20040j = z3;
                if (z3) {
                    hpVar.jx = this.f20037l.j() - this.f20039w;
                } else {
                    hpVar.jx = this.f20037l.jx() + this.f20039w;
                }
                return true;
            }
            this.f20036j = -1;
            this.f20039w = Integer.MIN_VALUE;
        }
        return false;
    }

    private int hp(int i2, RecyclerView.u uVar, RecyclerView.sz szVar, boolean z2) {
        int iJ;
        int iJ2 = this.f20037l.j() - i2;
        if (iJ2 <= 0) {
            return 0;
        }
        int i3 = -jx(-iJ2, uVar, szVar);
        int i4 = i2 + i3;
        if (!z2 || (iJ = this.f20037l.j() - i4) <= 0) {
            return i3;
        }
        this.f20037l.hp(iJ);
        return iJ + i3;
    }

    private void hp(hp hpVar) {
        a(hpVar.f20041l, hpVar.jx);
    }

    @Override // com.byazt.fjm.RecyclerView.q
    public int hp(int i2, RecyclerView.u uVar, RecyclerView.sz szVar) {
        if (this.hp == 1) {
            return 0;
        }
        return jx(i2, uVar, szVar);
    }

    private void hp(int i2, int i3, boolean z2, RecyclerView.sz szVar) {
        int iJx;
        this.vv.jl = s();
        this.vv.f20049s = hp(szVar);
        jx jxVar = this.vv;
        jxVar.f20044a = i2;
        if (i2 == 1) {
            jxVar.f20049s += this.f20037l.eb();
            View viewKy = ky();
            jx jxVar2 = this.vv;
            jxVar2.f20050w = this.jx ? -1 : 1;
            int iJ = j(viewKy);
            jx jxVar3 = this.vv;
            jxVar2.f20046j = iJ + jxVar3.f20050w;
            jxVar3.f20047l = this.f20037l.l(viewKy);
            iJx = this.f20037l.l(viewKy) - this.f20037l.j();
        } else {
            View viewPu = pu();
            this.vv.f20049s += this.f20037l.jx();
            jx jxVar4 = this.vv;
            jxVar4.f20050w = this.jx ? 1 : -1;
            int iJ2 = j(viewPu);
            jx jxVar5 = this.vv;
            jxVar4.f20046j = iJ2 + jxVar5.f20050w;
            jxVar5.f20047l = this.f20037l.hp(viewPu);
            iJx = (-this.f20037l.hp(viewPu)) + this.f20037l.jx();
        }
        jx jxVar6 = this.vv;
        jxVar6.jx = i3;
        if (z2) {
            jxVar6.jx = i3 - iJx;
        }
        jxVar6.eb = iJx;
    }

    public void hp(RecyclerView.sz szVar, jx jxVar, RecyclerView.q.hp hpVar) {
        int i2 = jxVar.f20046j;
        if (i2 < 0 || i2 >= szVar.j()) {
            return;
        }
        hpVar.l(i2, Math.max(0, jxVar.eb));
    }

    @Override // com.byazt.fjm.RecyclerView.q
    public void hp(int i2, RecyclerView.q.hp hpVar) {
        boolean z2;
        int i3;
        j jVar = this.f20034a;
        if (jVar != null && jVar.hp()) {
            j jVar2 = this.f20034a;
            z2 = jVar2.jx;
            i3 = jVar2.hp;
        } else {
            r();
            z2 = this.jx;
            i3 = this.f20036j;
            if (i3 == -1) {
                i3 = z2 ? i2 - 1 : 0;
            }
        }
        int i4 = z2 ? -1 : 1;
        for (int i5 = 0; i5 < this.di && i3 >= 0 && i3 < i2; i5++) {
            hpVar.l(i3, 0);
            i3 += i4;
        }
    }

    @Override // com.byazt.fjm.RecyclerView.q
    public void hp(int i2, int i3, RecyclerView.sz szVar, RecyclerView.q.hp hpVar) {
        if (this.hp != 0) {
            i2 = i3;
        }
        if (ec() == 0 || i2 == 0) {
            return;
        }
        a();
        hp(i2 > 0 ? 1 : -1, Math.abs(i2), true, szVar);
        hp(szVar, this.vv, hpVar);
    }

    @Override // com.byazt.fjm.RecyclerView.q
    public void hp(String str) {
        if (this.f20034a == null) {
            super.hp(str);
        }
    }

    private void hp(RecyclerView.u uVar, int i2, int i3) {
        if (i2 != i3) {
            if (i3 <= i2) {
                while (i2 > i3) {
                    hp(i2, uVar);
                    i2--;
                }
            } else {
                for (int i4 = i3 - 1; i4 >= i2; i4--) {
                    hp(i4, uVar);
                }
            }
        }
    }

    private void hp(RecyclerView.u uVar, int i2) {
        if (i2 >= 0) {
            int iEc = ec();
            if (!this.jx) {
                for (int i3 = 0; i3 < iEc; i3++) {
                    View viewS = s(i3);
                    if (this.f20037l.l(viewS) > i2 || this.f20037l.jx(viewS) > i2) {
                        hp(uVar, 0, i3);
                        return;
                    }
                }
                return;
            }
            int i4 = iEc - 1;
            for (int i5 = i4; i5 >= 0; i5--) {
                View viewS2 = s(i5);
                if (this.f20037l.l(viewS2) > i2 || this.f20037l.jx(viewS2) > i2) {
                    hp(uVar, i4, i5);
                    return;
                }
            }
        }
    }

    private void hp(RecyclerView.u uVar, jx jxVar) {
        if (!jxVar.hp || jxVar.jl) {
            return;
        }
        if (jxVar.f20044a == -1) {
            l(uVar, jxVar.eb);
        } else {
            hp(uVar, jxVar.eb);
        }
    }

    public int hp(RecyclerView.u uVar, jx jxVar, RecyclerView.sz szVar, boolean z2) {
        int i2 = jxVar.jx;
        int i3 = jxVar.eb;
        if (i3 != Integer.MIN_VALUE) {
            if (i2 < 0) {
                jxVar.eb = i3 + i2;
            }
            hp(uVar, jxVar);
        }
        int i4 = jxVar.jx + jxVar.f20049s;
        l lVar = this.f20035b;
        while (true) {
            if ((!jxVar.jl && i4 <= 0) || !jxVar.hp(szVar)) {
                break;
            }
            lVar.hp();
            hp(uVar, szVar, jxVar, lVar);
            if (!lVar.f20052l) {
                jxVar.f20047l += lVar.hp * jxVar.f20044a;
                if (!lVar.jx || this.vv.gu != null || !szVar.hp()) {
                    int i5 = jxVar.jx;
                    int i6 = lVar.hp;
                    jxVar.jx = i5 - i6;
                    i4 -= i6;
                }
                int i7 = jxVar.eb;
                if (i7 != Integer.MIN_VALUE) {
                    int i8 = i7 + lVar.hp;
                    jxVar.eb = i8;
                    int i9 = jxVar.jx;
                    if (i9 < 0) {
                        jxVar.eb = i8 + i9;
                    }
                    hp(uVar, jxVar);
                }
                if (z2 && lVar.f20051j) {
                    break;
                }
            } else {
                break;
            }
        }
        return i2 - jxVar.jx;
    }

    public void hp(RecyclerView.u uVar, RecyclerView.sz szVar, jx jxVar, l lVar) {
        int i2;
        int i3;
        int i4;
        int i5;
        int iB;
        int iA;
        int i6;
        int i7;
        View viewHp = jxVar.hp(uVar);
        if (viewHp == null) {
            lVar.f20052l = true;
            return;
        }
        RecyclerView.e eVar = (RecyclerView.e) viewHp.getLayoutParams();
        if (jxVar.gu == null) {
            if (this.jx == (jxVar.f20044a == -1)) {
                l(viewHp);
            } else {
                l(viewHp, 0);
            }
        } else {
            if (this.jx == (jxVar.f20044a == -1)) {
                hp(viewHp);
            } else {
                hp(viewHp, 0);
            }
        }
        hp(viewHp, 0, 0);
        lVar.hp = this.f20037l.w(viewHp);
        if (this.hp == 1) {
            if (w()) {
                iA = ns() - o();
                iB = iA - this.f20037l.a(viewHp);
            } else {
                iB = b();
                iA = this.f20037l.a(viewHp) + iB;
            }
            if (jxVar.f20044a == -1) {
                i7 = jxVar.f20047l;
                i6 = i7 - lVar.hp;
            } else {
                i6 = jxVar.f20047l;
                i7 = lVar.hp + i6;
            }
            int i8 = iB;
            i5 = i6;
            i4 = i8;
            i3 = i7;
            i2 = iA;
        } else {
            int iDi = di();
            int iA2 = this.f20037l.a(viewHp) + iDi;
            if (jxVar.f20044a == -1) {
                int i9 = jxVar.f20047l;
                i4 = i9 - lVar.hp;
                i2 = i9;
                i3 = iA2;
            } else {
                int i10 = jxVar.f20047l;
                i2 = lVar.hp + i10;
                i3 = iA2;
                i4 = i10;
            }
            i5 = iDi;
        }
        hp(viewHp, i4, i5, i2, i3);
        if (eVar.l() || eVar.jx()) {
            lVar.jx = true;
        }
        lVar.f20051j = viewHp.hasFocusable();
    }

    private View hp(boolean z2, boolean z3) {
        int iEc;
        int iEc2;
        if (this.jx) {
            iEc = ec() - 1;
            iEc2 = -1;
        } else {
            iEc = 0;
            iEc2 = ec();
        }
        return hp(iEc, iEc2, z2, z3);
    }

    public View hp(RecyclerView.u uVar, RecyclerView.sz szVar, int i2, int i3, int i4) {
        a();
        int iJx = this.f20037l.jx();
        int iJ = this.f20037l.j();
        int i5 = i3 > i2 ? 1 : -1;
        View view = null;
        View view2 = null;
        while (i2 != i3) {
            View viewS = s(i2);
            int iJ2 = j(viewS);
            if (iJ2 >= 0 && iJ2 < i4) {
                if (((RecyclerView.e) viewS.getLayoutParams()).l()) {
                    if (view2 == null) {
                        view2 = viewS;
                    }
                } else {
                    if (this.f20037l.hp(viewS) < iJ && this.f20037l.l(viewS) >= iJx) {
                        return viewS;
                    }
                    if (view == null) {
                        view = viewS;
                    }
                }
            }
            i2 += i5;
        }
        return view != null ? view : view2;
    }

    public View hp(int i2, int i3, boolean z2, boolean z3) {
        a();
        int i4 = MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME;
        int i5 = z2 ? 24579 : 320;
        if (!z3) {
            i4 = 0;
        }
        return (this.hp == 0 ? this.f19946e : this.gu).hp(i2, i3, i5, i4);
    }

    public View hp(int i2, int i3) {
        int i4;
        int i5;
        a();
        if (i3 > i2 || i3 < i2) {
            if (this.f20037l.hp(s(i2)) < this.f20037l.jx()) {
                i4 = 16644;
                i5 = 16388;
            } else {
                i4 = 4161;
                i5 = 4097;
            }
            return (this.hp == 0 ? this.f19946e : this.gu).hp(i2, i3, i4, i5);
        }
        return s(i2);
    }

    @Override // com.byazt.fjm.RecyclerView.q
    public View hp(View view, int i2, RecyclerView.u uVar, RecyclerView.sz szVar) {
        int iW;
        View viewA;
        View viewKy;
        r();
        if (ec() == 0 || (iW = w(i2)) == Integer.MIN_VALUE) {
            return null;
        }
        a();
        a();
        hp(iW, (int) (this.f20037l.a() * 0.33333334f), false, szVar);
        jx jxVar = this.vv;
        jxVar.eb = Integer.MIN_VALUE;
        jxVar.hp = false;
        hp(uVar, jxVar, szVar, true);
        if (iW == -1) {
            viewA = eb(uVar, szVar);
        } else {
            viewA = a(uVar, szVar);
        }
        if (iW == -1) {
            viewKy = pu();
        } else {
            viewKy = ky();
        }
        if (!viewKy.hasFocusable()) {
            return viewA;
        }
        if (viewA == null) {
            return null;
        }
        return viewKy;
    }
}
