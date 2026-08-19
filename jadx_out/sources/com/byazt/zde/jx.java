package com.byazt.zde;

import android.view.View;
import android.view.ViewGroup;

@com.byazt.kj.hp(hp = {0, 1, 37, 30})
/* loaded from: classes3.dex */
public class jx {
    public static volatile jx hp;

    private jx() {
    }

    public static jx hp() {
        if (hp == null) {
            synchronized (jx.class) {
                try {
                    if (hp == null) {
                        hp = new jx();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public j hp(View view, com.byazt.nw.hp hpVar) {
        if (hpVar == null) {
            return null;
        }
        if (view.getParent() != null) {
            ((ViewGroup) view.getParent()).setClipChildren(false);
        }
        if (view.getParent().getParent() != null) {
            ((ViewGroup) view.getParent().getParent()).setClipChildren(false);
        }
        if ("scale".equals(hpVar.q())) {
            return new gu(view, hpVar);
        }
        if ("translate".equals(hpVar.q())) {
            return new v(view, hpVar);
        }
        if ("ripple".equals(hpVar.q())) {
            return new s(view, hpVar);
        }
        if ("marquee".equals(hpVar.q())) {
            return new eb(view, hpVar);
        }
        if ("waggle".equals(hpVar.q())) {
            return new u(view, hpVar);
        }
        if ("shine".equals(hpVar.q())) {
            return new jl(view, hpVar);
        }
        if ("swing".equals(hpVar.q())) {
            return new k(view, hpVar);
        }
        if ("fade".equals(hpVar.q())) {
            return new hp(view, hpVar);
        }
        if ("rubIn".equals(hpVar.q())) {
            return new e(view, hpVar);
        }
        if ("rotate".equals(hpVar.q())) {
            return new q(view, hpVar);
        }
        if ("cutIn".equals(hpVar.q())) {
            return new a(view, hpVar);
        }
        if ("stretch".equals(hpVar.q())) {
            return new zy(view, hpVar);
        }
        if ("bounce".equals(hpVar.q())) {
            return new w(view, hpVar);
        }
        return null;
    }
}
