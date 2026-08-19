package androidx.webkit;

import androidx.webkit.Profile;
import java.util.ArrayList;
import java.util.List;

@Profile.ExperimentalUrlPrefetch
/* loaded from: classes.dex */
public class NoVarySearchHeader {
    public final List<String> consideredQueryParameters;
    public final boolean ignoreDifferencesInParameters;
    public final List<String> ignoredQueryParameters;
    public final boolean varyOnKeyOrder;

    private NoVarySearchHeader(boolean z2, boolean z3, List<String> list, List<String> list2) {
        this.varyOnKeyOrder = z2;
        this.ignoreDifferencesInParameters = z3;
        this.ignoredQueryParameters = list;
        this.consideredQueryParameters = list2;
    }

    @Profile.ExperimentalUrlPrefetch
    public static NoVarySearchHeader alwaysVaryHeader() {
        return new NoVarySearchHeader(true, false, new ArrayList(), new ArrayList());
    }

    @Profile.ExperimentalUrlPrefetch
    public static NoVarySearchHeader neverVaryExcept(boolean z2, List<String> list) {
        return new NoVarySearchHeader(z2, true, new ArrayList(), list);
    }

    @Profile.ExperimentalUrlPrefetch
    public static NoVarySearchHeader neverVaryHeader() {
        return new NoVarySearchHeader(false, true, new ArrayList(), new ArrayList());
    }

    @Profile.ExperimentalUrlPrefetch
    public static NoVarySearchHeader varyExcept(boolean z2, List<String> list) {
        return new NoVarySearchHeader(z2, false, list, new ArrayList());
    }
}
