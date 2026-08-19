package androidx.webkit;

import androidx.webkit.WebViewBuilder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.chromium.support_lib_boundary.WebViewBuilderBoundaryInterface;

@WebViewBuilder.Experimental
/* loaded from: classes.dex */
public final class RestrictionAllowlist {
    private final List<ConfigTask> mConfigTasks;

    public static final class Builder {
        private final List<ConfigTask> mConfigTasks = new ArrayList();
        private final List<String> mOriginPatterns;

        public Builder(Set<String> set) {
            this.mOriginPatterns = new ArrayList(set);
        }

        public Builder addJavaScriptInterface(final Object obj, final String str) {
            this.mConfigTasks.add(new ConfigTask() { // from class: androidx.webkit.a
                @Override // androidx.webkit.RestrictionAllowlist.ConfigTask
                public final void configure(WebViewBuilderBoundaryInterface.Config config) {
                    config.addJavascriptInterface(obj, str, this.f1058a.mOriginPatterns);
                }
            });
            return this;
        }

        public RestrictionAllowlist build() {
            return new RestrictionAllowlist(this.mConfigTasks);
        }
    }

    public interface ConfigTask {
        void configure(WebViewBuilderBoundaryInterface.Config config);
    }

    public void configure(WebViewBuilderBoundaryInterface.Config config) {
        Iterator<ConfigTask> it = this.mConfigTasks.iterator();
        while (it.hasNext()) {
            it.next().configure(config);
        }
    }

    private RestrictionAllowlist(List<ConfigTask> list) {
        this.mConfigTasks = list;
    }
}
