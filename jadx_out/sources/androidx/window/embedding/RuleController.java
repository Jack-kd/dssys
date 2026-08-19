package androidx.window.embedding;

import android.content.Context;
import android.content.res.Resources;
import androidx.annotation.XmlRes;
import androidx.window.embedding.EmbeddingBackend;
import java.io.IOException;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.J;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
import org.xmlpull.v1.XmlPullParserException;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0013\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\f\u0010\rJ\u0015\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u000e\u0010\rJ\u001b\u0010\u0010\u001a\u00020\u000b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\u000b¢\u0006\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0014¨\u0006\u0016"}, d2 = {"Landroidx/window/embedding/RuleController;", "", "Landroidx/window/embedding/EmbeddingBackend;", "embeddingBackend", "<init>", "(Landroidx/window/embedding/EmbeddingBackend;)V", "", "Landroidx/window/embedding/EmbeddingRule;", "getRules", "()Ljava/util/Set;", "rule", "Lkotlin/j;", "addRule", "(Landroidx/window/embedding/EmbeddingRule;)V", "removeRule", "rules", "setRules", "(Ljava/util/Set;)V", "clearRules", "()V", "Landroidx/window/embedding/EmbeddingBackend;", "Companion", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class RuleController {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private final EmbeddingBackend embeddingBackend;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J \u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\n\u001a\u00020\u000bH\u0007¨\u0006\f"}, d2 = {"Landroidx/window/embedding/RuleController$Companion;", "", "()V", "getInstance", "Landroidx/window/embedding/RuleController;", com.umeng.analytics.pro.g.f49337X, "Landroid/content/Context;", "parseRules", "", "Landroidx/window/embedding/EmbeddingRule;", "staticRuleResourceId", "", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.f fVar) {
            this();
        }

        @JvmStatic
        @NotNull
        public final RuleController getInstance(@NotNull Context context) {
            kotlin.jvm.internal.j.e(context, "context");
            Context applicationContext = context.getApplicationContext();
            EmbeddingBackend.Companion companion = EmbeddingBackend.INSTANCE;
            kotlin.jvm.internal.j.d(applicationContext, "applicationContext");
            return new RuleController(companion.getInstance(applicationContext));
        }

        @JvmStatic
        @NotNull
        public final Set<EmbeddingRule> parseRules(@NotNull Context context, @XmlRes int staticRuleResourceId) throws XmlPullParserException, Resources.NotFoundException, IOException {
            kotlin.jvm.internal.j.e(context, "context");
            RuleParser ruleParser = RuleParser.INSTANCE;
            Context applicationContext = context.getApplicationContext();
            kotlin.jvm.internal.j.d(applicationContext, "context.applicationContext");
            Set<EmbeddingRule> rules$window_release = ruleParser.parseRules$window_release(applicationContext, staticRuleResourceId);
            return rules$window_release == null ? J.e() : rules$window_release;
        }

        private Companion() {
        }
    }

    public RuleController(@NotNull EmbeddingBackend embeddingBackend) {
        kotlin.jvm.internal.j.e(embeddingBackend, "embeddingBackend");
        this.embeddingBackend = embeddingBackend;
    }

    @JvmStatic
    @NotNull
    public static final RuleController getInstance(@NotNull Context context) {
        return INSTANCE.getInstance(context);
    }

    @JvmStatic
    @NotNull
    public static final Set<EmbeddingRule> parseRules(@NotNull Context context, @XmlRes int i2) {
        return INSTANCE.parseRules(context, i2);
    }

    public final void addRule(@NotNull EmbeddingRule rule) {
        kotlin.jvm.internal.j.e(rule, "rule");
        this.embeddingBackend.addRule(rule);
    }

    public final void clearRules() {
        this.embeddingBackend.setRules(J.e());
    }

    @NotNull
    public final Set<EmbeddingRule> getRules() {
        return this.embeddingBackend.getRules();
    }

    public final void removeRule(@NotNull EmbeddingRule rule) {
        kotlin.jvm.internal.j.e(rule, "rule");
        this.embeddingBackend.removeRule(rule);
    }

    public final void setRules(@NotNull Set<? extends EmbeddingRule> rules) {
        kotlin.jvm.internal.j.e(rules, "rules");
        this.embeddingBackend.setRules(rules);
    }
}
