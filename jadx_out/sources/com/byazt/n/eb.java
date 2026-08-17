package com.byazt.n;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import com.byazt.f.jl;
import com.byazt.f.zy;
import com.byazt.v.l;
import com.byazt.y.gu;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CONTAINER_FPS, 94})
/* loaded from: classes3.dex */
public class eb extends com.byazt.f.hp {
    public static String hp = "eb";

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CONTAINER_FPS, 131})
    public static class hp implements jl {
        public Dialog hp;

        public hp(Dialog dialog) {
            if (dialog != null) {
                this.hp = dialog;
                hp();
            }
        }

        @Override // com.byazt.f.jl
        public void hp() {
            Dialog dialog = this.hp;
            if (dialog != null) {
                dialog.show();
            }
        }

        @Override // com.byazt.f.jl
        public boolean l() {
            Dialog dialog = this.hp;
            if (dialog != null) {
                return dialog.isShowing();
            }
            return false;
        }
    }

    @Override // com.byazt.f.hp, com.byazt.f.j
    public zy hp(Context context) {
        return new zy(context) { // from class: com.byazt.n.eb.1

            /* renamed from: a, reason: collision with root package name */
            public DialogInterface.OnCancelListener f23359a;
            public final /* synthetic */ Context hp;

            /* renamed from: j, reason: collision with root package name */
            public DialogInterface.OnClickListener f23360j;
            public l.hp jx;

            /* renamed from: w, reason: collision with root package name */
            public DialogInterface.OnClickListener f23362w;

            {
                this.hp = context;
                this.jx = new l.hp(context);
            }

            @Override // com.byazt.f.zy
            public zy hp(CharSequence charSequence) {
                this.jx.hp((String) charSequence);
                return this;
            }

            @Override // com.byazt.f.zy
            public zy l(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
                this.jx.j((String) charSequence);
                this.f23362w = onClickListener;
                return this;
            }

            @Override // com.byazt.f.zy
            public zy hp(String str) {
                this.jx.l(str);
                return this;
            }

            @Override // com.byazt.f.zy
            public zy hp(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
                this.jx.jx((String) charSequence);
                this.f23360j = onClickListener;
                return this;
            }

            @Override // com.byazt.f.zy
            public zy hp(DialogInterface.OnCancelListener onCancelListener) {
                this.f23359a = onCancelListener;
                return this;
            }

            @Override // com.byazt.f.zy
            public zy hp(boolean z2) {
                this.jx.hp(z2);
                return this;
            }

            @Override // com.byazt.f.zy
            public jl hp() {
                this.jx.hp(new l.InterfaceC0391l() { // from class: com.byazt.n.eb.1.1
                    @Override // com.byazt.v.l.InterfaceC0391l
                    public void hp(DialogInterface dialogInterface) {
                        if (AnonymousClass1.this.f23360j != null) {
                            AnonymousClass1.this.f23360j.onClick(dialogInterface, -1);
                        }
                    }

                    @Override // com.byazt.v.l.InterfaceC0391l
                    public void jx(DialogInterface dialogInterface) {
                        if (AnonymousClass1.this.f23359a == null || dialogInterface == null) {
                            return;
                        }
                        AnonymousClass1.this.f23359a.onCancel(dialogInterface);
                    }

                    @Override // com.byazt.v.l.InterfaceC0391l
                    public void l(DialogInterface dialogInterface) {
                        if (AnonymousClass1.this.f23362w != null) {
                            AnonymousClass1.this.f23362w.onClick(dialogInterface, -2);
                        }
                    }
                });
                gu.hp(eb.hp, "getThemedAlertDlgBuilder", null);
                this.jx.hp(3);
                return new hp(com.byazt.t.jl.jx().l(this.jx.hp()));
            }
        };
    }
}
