package io.flutter.plugins.webviewflutter;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes5.dex */
public class ViewProxyApi extends PigeonApiView {

    /* renamed from: io.flutter.plugins.webviewflutter.ViewProxyApi$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$flutter$plugins$webviewflutter$OverScrollMode;
        static final /* synthetic */ int[] $SwitchMap$io$flutter$plugins$webviewflutter$WindowInsetsType;

        static {
            int[] iArr = new int[WindowInsetsType.values().length];
            $SwitchMap$io$flutter$plugins$webviewflutter$WindowInsetsType = iArr;
            try {
                iArr[WindowInsetsType.SYSTEM_BARS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$flutter$plugins$webviewflutter$WindowInsetsType[WindowInsetsType.DISPLAY_CUTOUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$flutter$plugins$webviewflutter$WindowInsetsType[WindowInsetsType.CAPTION_BAR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$io$flutter$plugins$webviewflutter$WindowInsetsType[WindowInsetsType.IME.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$io$flutter$plugins$webviewflutter$WindowInsetsType[WindowInsetsType.MANDATORY_SYSTEM_GESTURES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$io$flutter$plugins$webviewflutter$WindowInsetsType[WindowInsetsType.NAVIGATION_BARS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$io$flutter$plugins$webviewflutter$WindowInsetsType[WindowInsetsType.STATUS_BARS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$io$flutter$plugins$webviewflutter$WindowInsetsType[WindowInsetsType.SYSTEM_GESTURES.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$io$flutter$plugins$webviewflutter$WindowInsetsType[WindowInsetsType.TAPPABLE_ELEMENT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            int[] iArr2 = new int[OverScrollMode.values().length];
            $SwitchMap$io$flutter$plugins$webviewflutter$OverScrollMode = iArr2;
            try {
                iArr2[OverScrollMode.ALWAYS.ordinal()] = 1;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$io$flutter$plugins$webviewflutter$OverScrollMode[OverScrollMode.IF_CONTENT_SCROLLS.ordinal()] = 2;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$io$flutter$plugins$webviewflutter$OverScrollMode[OverScrollMode.NEVER.ordinal()] = 3;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$io$flutter$plugins$webviewflutter$OverScrollMode[OverScrollMode.UNKNOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    public ViewProxyApi(@NonNull ProxyApiRegistrar proxyApiRegistrar) {
        super(proxyApiRegistrar);
    }

    public static /* synthetic */ WindowInsetsCompat c(View view, WindowInsetsCompat windowInsetsCompat) {
        return windowInsetsCompat;
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiView
    @NonNull
    public WebViewPoint getScrollPosition(@NonNull View view) {
        return new WebViewPoint(view.getScrollX(), view.getScrollY());
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiView
    public void scrollBy(@NonNull View view, long j2, long j3) {
        view.scrollBy((int) j2, (int) j3);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiView
    public void scrollTo(@NonNull View view, long j2, long j3) {
        view.scrollTo((int) j2, (int) j3);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiView
    public void setHorizontalScrollBarEnabled(@NonNull View view, boolean z2) {
        view.setHorizontalScrollBarEnabled(z2);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiView
    public void setInsetListenerToSetInsetsToZero(@NonNull View view, @NonNull List<? extends WindowInsetsType> list) {
        int iSystemBars;
        if (list.isEmpty()) {
            ViewCompat.setOnApplyWindowInsetsListener(view, new OnApplyWindowInsetsListener() { // from class: io.flutter.plugins.webviewflutter.T2
                @Override // androidx.core.view.OnApplyWindowInsetsListener
                public final WindowInsetsCompat onApplyWindowInsets(View view2, WindowInsetsCompat windowInsetsCompat) {
                    return ViewProxyApi.c(view2, windowInsetsCompat);
                }
            });
            return;
        }
        Iterator<? extends WindowInsetsType> it = list.iterator();
        final int i2 = 0;
        while (it.hasNext()) {
            switch (AnonymousClass1.$SwitchMap$io$flutter$plugins$webviewflutter$WindowInsetsType[it.next().ordinal()]) {
                case 1:
                    iSystemBars = WindowInsetsCompat.Type.systemBars();
                    i2 |= iSystemBars;
                    break;
                case 2:
                    iSystemBars = WindowInsetsCompat.Type.displayCutout();
                    i2 |= iSystemBars;
                    break;
                case 3:
                    iSystemBars = WindowInsetsCompat.Type.captionBar();
                    i2 |= iSystemBars;
                    break;
                case 4:
                    iSystemBars = WindowInsetsCompat.Type.ime();
                    i2 |= iSystemBars;
                    break;
                case 5:
                    iSystemBars = WindowInsetsCompat.Type.mandatorySystemGestures();
                    i2 |= iSystemBars;
                    break;
                case 6:
                    iSystemBars = WindowInsetsCompat.Type.navigationBars();
                    i2 |= iSystemBars;
                    break;
                case 7:
                    iSystemBars = WindowInsetsCompat.Type.statusBars();
                    i2 |= iSystemBars;
                    break;
                case 8:
                    iSystemBars = WindowInsetsCompat.Type.systemGestures();
                    i2 |= iSystemBars;
                    break;
                case 9:
                    iSystemBars = WindowInsetsCompat.Type.tappableElement();
                    i2 |= iSystemBars;
                    break;
            }
        }
        ViewCompat.setOnApplyWindowInsetsListener(view, new OnApplyWindowInsetsListener() { // from class: io.flutter.plugins.webviewflutter.U2
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view2, WindowInsetsCompat windowInsetsCompat) {
                return new WindowInsetsCompat.Builder(windowInsetsCompat).setInsets(i2, Insets.NONE).build();
            }
        });
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiView
    public void setOverScrollMode(@NonNull View view, @NonNull OverScrollMode overScrollMode) {
        int i2 = AnonymousClass1.$SwitchMap$io$flutter$plugins$webviewflutter$OverScrollMode[overScrollMode.ordinal()];
        if (i2 == 1) {
            view.setOverScrollMode(0);
            return;
        }
        if (i2 == 2) {
            view.setOverScrollMode(1);
        } else if (i2 == 3) {
            view.setOverScrollMode(2);
        } else if (i2 == 4) {
            throw getPigeonRegistrar().createUnknownEnumException(OverScrollMode.UNKNOWN);
        }
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiView
    public void setVerticalScrollBarEnabled(@NonNull View view, boolean z2) {
        view.setVerticalScrollBarEnabled(z2);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiView
    @NonNull
    public ProxyApiRegistrar getPigeonRegistrar() {
        return (ProxyApiRegistrar) super.getPigeonRegistrar();
    }
}
