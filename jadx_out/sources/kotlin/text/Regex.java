package kotlin.text;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import io.flutter.plugin.editing.SpellCheckPlugin;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0011\u0018\u0000 A2\u00060\u0001j\u0002`\u0002:\u0002BCB\u0011\b\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\u0011\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0005\u0010\tB\u0019\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u0005\u0010\fB\u001f\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\n0\r¢\u0006\u0004\b\u0005\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0018\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0014\u001a\u00020\u0018H\u0086\u0004¢\u0006\u0004\b\u001a\u0010\u001bJ\u0015\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u0014\u001a\u00020\u0018¢\u0006\u0004\b\u001c\u0010\u001bJ!\u0010 \u001a\u0004\u0018\u00010\u001f2\u0006\u0010\u0014\u001a\u00020\u00182\b\b\u0002\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b \u0010!J%\u0010#\u001a\b\u0012\u0004\u0012\u00020\u001f0\"2\u0006\u0010\u0014\u001a\u00020\u00182\b\b\u0002\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b#\u0010$J\u0017\u0010%\u001a\u0004\u0018\u00010\u001f2\u0006\u0010\u0014\u001a\u00020\u0018¢\u0006\u0004\b%\u0010&J!\u0010(\u001a\u0004\u0018\u00010\u001f2\u0006\u0010\u0014\u001a\u00020\u00182\u0006\u0010'\u001a\u00020\u001dH\u0007¢\u0006\u0004\b(\u0010!J\u001f\u0010)\u001a\u00020\u00192\u0006\u0010\u0014\u001a\u00020\u00182\u0006\u0010'\u001a\u00020\u001dH\u0007¢\u0006\u0004\b)\u0010*J\u001d\u0010,\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00182\u0006\u0010+\u001a\u00020\u0007¢\u0006\u0004\b,\u0010-J)\u0010,\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00182\u0012\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u00180.¢\u0006\u0004\b,\u00100J\u001d\u00101\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00182\u0006\u0010+\u001a\u00020\u0007¢\u0006\u0004\b1\u0010-J%\u00104\u001a\b\u0012\u0004\u0012\u00020\u0007032\u0006\u0010\u0014\u001a\u00020\u00182\b\b\u0002\u00102\u001a\u00020\u001d¢\u0006\u0004\b4\u00105J'\u00106\u001a\b\u0012\u0004\u0012\u00020\u00070\"2\u0006\u0010\u0014\u001a\u00020\u00182\b\b\u0002\u00102\u001a\u00020\u001dH\u0007¢\u0006\u0004\b6\u0010$J\u000f\u00107\u001a\u00020\u0007H\u0016¢\u0006\u0004\b7\u00108J\r\u00109\u001a\u00020\u0003¢\u0006\u0004\b9\u0010:R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010;R\u001e\u0010<\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R\u0011\u0010\b\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b>\u00108R\u0017\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\n0\r8F¢\u0006\u0006\u001a\u0004\b?\u0010@¨\u0006D"}, d2 = {"Lkotlin/text/Regex;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "Ljava/util/regex/Pattern;", "nativePattern", "<init>", "(Ljava/util/regex/Pattern;)V", "", "pattern", "(Ljava/lang/String;)V", "Lkotlin/text/RegexOption;", "option", "(Ljava/lang/String;Lkotlin/text/RegexOption;)V", "", "options", "(Ljava/lang/String;Ljava/util/Set;)V", "", "writeReplace", "()Ljava/lang/Object;", "Ljava/io/ObjectInputStream;", "input", "Lkotlin/j;", "readObject", "(Ljava/io/ObjectInputStream;)V", "", "", "matches", "(Ljava/lang/CharSequence;)Z", "containsMatchIn", "", SpellCheckPlugin.START_INDEX_KEY, "Lkotlin/text/k;", "find", "(Ljava/lang/CharSequence;I)Lkotlin/text/k;", "Lkotlin/sequences/g;", "findAll", "(Ljava/lang/CharSequence;I)Lkotlin/sequences/g;", "matchEntire", "(Ljava/lang/CharSequence;)Lkotlin/text/k;", com.umeng.ccg.a.f49746H, "matchAt", "matchesAt", "(Ljava/lang/CharSequence;I)Z", "replacement", "replace", "(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;", "Lkotlin/Function1;", "transform", "(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;", "replaceFirst", "limit", "", "split", "(Ljava/lang/CharSequence;I)Ljava/util/List;", "splitToSequence", "toString", "()Ljava/lang/String;", "toPattern", "()Ljava/util/regex/Pattern;", "Ljava/util/regex/Pattern;", "_options", "Ljava/util/Set;", "getPattern", "getOptions", "()Ljava/util/Set;", "Companion", "Serialized", "a", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRegex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Regex.kt\nkotlin/text/Regex\n+ 2 Regex.kt\nkotlin/text/RegexKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,404:1\n24#2,3:405\n1#3:408\n*S KotlinDebug\n*F\n+ 1 Regex.kt\nkotlin/text/Regex\n*L\n105#1:405,3\n*E\n"})
/* loaded from: classes5.dex */
public final class Regex implements Serializable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Nullable
    private Set<? extends RegexOption> _options;

    @NotNull
    private final Pattern nativePattern;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u000b\b\u0002\u0018\u0000 \u00122\u00060\u0001j\u0002`\u0002:\u0001\u0013B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000bR\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\f\u001a\u0004\b\r\u0010\u000eR\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0014"}, d2 = {"Lkotlin/text/Regex$Serialized;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "pattern", "", "flags", "<init>", "(Ljava/lang/String;I)V", "", "readResolve", "()Ljava/lang/Object;", "Ljava/lang/String;", "getPattern", "()Ljava/lang/String;", "I", "getFlags", "()I", "Companion", "a", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Serialized implements Serializable {
        private static final long serialVersionUID = 0;
        private final int flags;

        @NotNull
        private final String pattern;

        public Serialized(@NotNull String pattern, int i2) {
            kotlin.jvm.internal.j.e(pattern, "pattern");
            this.pattern = pattern;
            this.flags = i2;
        }

        private final Object readResolve() {
            Pattern patternCompile = Pattern.compile(this.pattern, this.flags);
            kotlin.jvm.internal.j.d(patternCompile, "compile(...)");
            return new Regex(patternCompile);
        }

        public final int getFlags() {
            return this.flags;
        }

        @NotNull
        public final String getPattern() {
            return this.pattern;
        }
    }

    /* renamed from: kotlin.text.Regex$a, reason: from kotlin metadata */
    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.f fVar) {
            this();
        }

        public final int b(int i2) {
            return (i2 & 2) != 0 ? i2 | 64 : i2;
        }

        public Companion() {
        }
    }

    public static final class b implements Function1 {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f51449b;

        public b(int i2) {
            this.f51449b = i2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(Enum r3) {
            f fVar = (f) r3;
            return Boolean.valueOf((this.f51449b & fVar.getMask()) == fVar.getValue());
        }
    }

    @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
    /* renamed from: kotlin.text.Regex$findAll$2, reason: invalid class name */
    public static final /* synthetic */ class AnonymousClass2 extends FunctionReferenceImpl implements Function1<k, k> {
        public static final AnonymousClass2 INSTANCE = new AnonymousClass2();

        public AnonymousClass2() {
            super(1, k.class, "next", "next()Lkotlin/text/MatchResult;", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public final k invoke(k p02) {
            kotlin.jvm.internal.j.e(p02, "p0");
            return p02.next();
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlin/sequences/i;", "", "Lkotlin/j;", "<anonymous>", "(Lkotlin/sequences/i;)V"}, k = 3, mv = {2, 2, 0})
    @DebugMetadata(c = "kotlin.text.Regex$splitToSequence$1", f = "Regex.kt", i = {0, 0, 1, 1, 1, 1, 2, 2, 2, 2}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_VIDEOCODEC_PIXEL_ALIGN, MediaPlayer.MEDIA_PLAYER_OPTION_UPDATE_TIMESTAMP_MODE, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_GET_CACHE_TIMESTAMP}, m = "invokeSuspend", n = {"$this$sequence", "matcher", "$this$sequence", "matcher", "nextStart", "splitCount", "$this$sequence", "matcher", "nextStart", "splitCount"}, nl = {MediaPlayer.MEDIA_PLAYER_OPTION_SET_FFMPEG_LOG_LEVEL, MediaPlayer.MEDIA_PLAYER_OPTION_READ_CACHE_MODE, MediaPlayer.MEDIA_PLAYER_OPTION_KEEP_FORMAT_THREAD_ALIVE}, s = {"L$0", "L$1", "L$0", "L$1", "I$0", "I$1", "L$0", "L$1", "I$0", "I$1"}, v = 2)
    /* renamed from: kotlin.text.Regex$splitToSequence$1, reason: invalid class name */
    public static final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<kotlin.sequences.i, kotlin.coroutines.e, Object> {
        final /* synthetic */ CharSequence $input;
        final /* synthetic */ int $limit;
        int I$0;
        int I$1;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(CharSequence charSequence, int i2, kotlin.coroutines.e eVar) {
            super(2, eVar);
            this.$input = charSequence;
            this.$limit = i2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final kotlin.coroutines.e create(Object obj, kotlin.coroutines.e eVar) {
            AnonymousClass1 anonymousClass1 = Regex.this.new AnonymousClass1(this.$input, this.$limit, eVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        /* JADX WARN: Code restructure failed: missing block: B:29:0x00af, code lost:
        
            if (r0.a(r4, r10) != r1) goto L31;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x00cd, code lost:
        
            if (r0.a(r2, r10) == r1) goto L35;
         */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0075  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0075 -> B:22:0x0076). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r11) throws java.lang.Throwable {
            /*
                r10 = this;
                java.lang.Object r0 = r10.L$0
                kotlin.sequences.i r0 = (kotlin.sequences.i) r0
                java.lang.Object r1 = kotlin.coroutines.intrinsics.a.e()
                int r2 = r10.label
                r3 = 3
                r4 = 2
                r5 = 1
                if (r2 == 0) goto L39
                if (r2 == r5) goto L30
                if (r2 == r4) goto L26
                if (r2 != r3) goto L1e
                java.lang.Object r0 = r10.L$1
                java.util.regex.Matcher r0 = (java.util.regex.Matcher) r0
                kotlin.e.b(r11)
                goto Lb2
            L1e:
                java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r11.<init>(r0)
                throw r11
            L26:
                int r2 = r10.I$1
                java.lang.Object r6 = r10.L$1
                java.util.regex.Matcher r6 = (java.util.regex.Matcher) r6
                kotlin.e.b(r11)
                goto L76
            L30:
                java.lang.Object r0 = r10.L$1
                java.util.regex.Matcher r0 = (java.util.regex.Matcher) r0
                kotlin.e.b(r11)
                goto Ld0
            L39:
                kotlin.e.b(r11)
                kotlin.text.Regex r11 = kotlin.text.Regex.this
                java.util.regex.Pattern r11 = kotlin.text.Regex.access$getNativePattern$p(r11)
                java.lang.CharSequence r2 = r10.$input
                java.util.regex.Matcher r11 = r11.matcher(r2)
                int r2 = r10.$limit
                if (r2 == r5) goto Lb5
                boolean r2 = r11.find()
                if (r2 != 0) goto L53
                goto Lb5
            L53:
                r2 = 0
                r6 = r11
                r11 = r2
            L56:
                java.lang.CharSequence r7 = r10.$input
                int r8 = r6.start()
                java.lang.CharSequence r7 = r7.subSequence(r2, r8)
                java.lang.String r7 = r7.toString()
                r10.L$0 = r0
                r10.L$1 = r6
                r10.I$0 = r2
                r10.I$1 = r11
                r10.label = r4
                java.lang.Object r2 = r0.a(r7, r10)
                if (r2 != r1) goto L75
                goto Lcf
            L75:
                r2 = r11
            L76:
                int r11 = r6.end()
                int r2 = r2 + r5
                int r7 = r10.$limit
                int r7 = r7 - r5
                if (r2 == r7) goto L8b
                boolean r7 = r6.find()
                if (r7 != 0) goto L87
                goto L8b
            L87:
                r9 = r2
                r2 = r11
                r11 = r9
                goto L56
            L8b:
                java.lang.CharSequence r4 = r10.$input
                int r5 = r4.length()
                java.lang.CharSequence r4 = r4.subSequence(r11, r5)
                java.lang.String r4 = r4.toString()
                java.lang.Object r5 = w1.g.a(r0)
                r10.L$0 = r5
                java.lang.Object r5 = w1.g.a(r6)
                r10.L$1 = r5
                r10.I$0 = r11
                r10.I$1 = r2
                r10.label = r3
                java.lang.Object r11 = r0.a(r4, r10)
                if (r11 != r1) goto Lb2
                goto Lcf
            Lb2:
                kotlin.j r11 = kotlin.j.f51397a
                return r11
            Lb5:
                java.lang.CharSequence r2 = r10.$input
                java.lang.String r2 = r2.toString()
                java.lang.Object r3 = w1.g.a(r0)
                r10.L$0 = r3
                java.lang.Object r11 = w1.g.a(r11)
                r10.L$1 = r11
                r10.label = r5
                java.lang.Object r11 = r0.a(r2, r10)
                if (r11 != r1) goto Ld0
            Lcf:
                return r1
            Ld0:
                kotlin.j r11 = kotlin.j.f51397a
                return r11
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.text.Regex.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlin.sequences.i iVar, kotlin.coroutines.e eVar) {
            return ((AnonymousClass1) create(iVar, eVar)).invokeSuspend(kotlin.j.f51397a);
        }
    }

    @PublishedApi
    public Regex(@NotNull Pattern nativePattern) {
        kotlin.jvm.internal.j.e(nativePattern, "nativePattern");
        this.nativePattern = nativePattern;
    }

    public static /* synthetic */ k find$default(Regex regex, CharSequence charSequence, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        return regex.find(charSequence, i2);
    }

    public static /* synthetic */ kotlin.sequences.g findAll$default(Regex regex, CharSequence charSequence, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        return regex.findAll(charSequence, i2);
    }

    private final void readObject(ObjectInputStream input) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    public static /* synthetic */ List split$default(Regex regex, CharSequence charSequence, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        return regex.split(charSequence, i2);
    }

    public static /* synthetic */ kotlin.sequences.g splitToSequence$default(Regex regex, CharSequence charSequence, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        return regex.splitToSequence(charSequence, i2);
    }

    private final Object writeReplace() {
        String strPattern = this.nativePattern.pattern();
        kotlin.jvm.internal.j.d(strPattern, "pattern(...)");
        return new Serialized(strPattern, this.nativePattern.flags());
    }

    public final boolean containsMatchIn(@NotNull CharSequence input) {
        kotlin.jvm.internal.j.e(input, "input");
        return this.nativePattern.matcher(input).find();
    }

    @Nullable
    public final k find(@NotNull CharSequence input, int startIndex) {
        kotlin.jvm.internal.j.e(input, "input");
        Matcher matcher = this.nativePattern.matcher(input);
        kotlin.jvm.internal.j.d(matcher, "matcher(...)");
        return o.f(matcher, startIndex, input);
    }

    @NotNull
    public final kotlin.sequences.g findAll(@NotNull final CharSequence input, final int startIndex) {
        kotlin.jvm.internal.j.e(input, "input");
        if (startIndex >= 0 && startIndex <= input.length()) {
            return kotlin.sequences.n.i(new Function0() { // from class: kotlin.text.n
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return this.f51486b.find(input, startIndex);
                }
            }, AnonymousClass2.INSTANCE);
        }
        throw new IndexOutOfBoundsException("Start index out of bounds: " + startIndex + ", input length: " + input.length());
    }

    @NotNull
    public final Set<RegexOption> getOptions() {
        Set set = this._options;
        if (set != null) {
            return set;
        }
        int iFlags = this.nativePattern.flags();
        EnumSet enumSetAllOf = EnumSet.allOf(RegexOption.class);
        kotlin.jvm.internal.j.b(enumSetAllOf);
        kotlin.collections.v.E(enumSetAllOf, new b(iFlags));
        Set<RegexOption> setUnmodifiableSet = Collections.unmodifiableSet(enumSetAllOf);
        kotlin.jvm.internal.j.d(setUnmodifiableSet, "unmodifiableSet(...)");
        this._options = setUnmodifiableSet;
        return setUnmodifiableSet;
    }

    @NotNull
    public final String getPattern() {
        String strPattern = this.nativePattern.pattern();
        kotlin.jvm.internal.j.d(strPattern, "pattern(...)");
        return strPattern;
    }

    @SinceKotlin(version = "1.7")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @Nullable
    public final k matchAt(@NotNull CharSequence input, int index) {
        kotlin.jvm.internal.j.e(input, "input");
        Matcher matcherRegion = this.nativePattern.matcher(input).useAnchoringBounds(false).useTransparentBounds(true).region(index, input.length());
        if (!matcherRegion.lookingAt()) {
            return null;
        }
        kotlin.jvm.internal.j.b(matcherRegion);
        return new m(matcherRegion, input);
    }

    @Nullable
    public final k matchEntire(@NotNull CharSequence input) {
        kotlin.jvm.internal.j.e(input, "input");
        Matcher matcher = this.nativePattern.matcher(input);
        kotlin.jvm.internal.j.d(matcher, "matcher(...)");
        return o.g(matcher, input);
    }

    public final boolean matches(@NotNull CharSequence input) {
        kotlin.jvm.internal.j.e(input, "input");
        return this.nativePattern.matcher(input).matches();
    }

    @SinceKotlin(version = "1.7")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public final boolean matchesAt(@NotNull CharSequence input, int index) {
        kotlin.jvm.internal.j.e(input, "input");
        return this.nativePattern.matcher(input).useAnchoringBounds(false).useTransparentBounds(true).region(index, input.length()).lookingAt();
    }

    @NotNull
    public final String replace(@NotNull CharSequence input, @NotNull String replacement) {
        kotlin.jvm.internal.j.e(input, "input");
        kotlin.jvm.internal.j.e(replacement, "replacement");
        String strReplaceAll = this.nativePattern.matcher(input).replaceAll(replacement);
        kotlin.jvm.internal.j.d(strReplaceAll, "replaceAll(...)");
        return strReplaceAll;
    }

    @NotNull
    public final String replaceFirst(@NotNull CharSequence input, @NotNull String replacement) {
        kotlin.jvm.internal.j.e(input, "input");
        kotlin.jvm.internal.j.e(replacement, "replacement");
        String strReplaceFirst = this.nativePattern.matcher(input).replaceFirst(replacement);
        kotlin.jvm.internal.j.d(strReplaceFirst, "replaceFirst(...)");
        return strReplaceFirst;
    }

    @NotNull
    public final List<String> split(@NotNull CharSequence input, int limit) {
        kotlin.jvm.internal.j.e(input, "input");
        B.p0(limit);
        Matcher matcher = this.nativePattern.matcher(input);
        if (limit == 1 || !matcher.find()) {
            return kotlin.collections.p.e(input.toString());
        }
        ArrayList arrayList = new ArrayList(limit > 0 ? E1.f.d(limit, 10) : 10);
        int i2 = limit - 1;
        int iEnd = 0;
        do {
            arrayList.add(input.subSequence(iEnd, matcher.start()).toString());
            iEnd = matcher.end();
            if (i2 >= 0 && arrayList.size() == i2) {
                break;
            }
        } while (matcher.find());
        arrayList.add(input.subSequence(iEnd, input.length()).toString());
        return arrayList;
    }

    @SinceKotlin(version = "1.6")
    @NotNull
    public final kotlin.sequences.g splitToSequence(@NotNull CharSequence input, int limit) {
        kotlin.jvm.internal.j.e(input, "input");
        B.p0(limit);
        return kotlin.sequences.j.b(new AnonymousClass1(input, limit, null));
    }

    @NotNull
    /* renamed from: toPattern, reason: from getter */
    public final Pattern getNativePattern() {
        return this.nativePattern;
    }

    @NotNull
    public String toString() {
        String string = this.nativePattern.toString();
        kotlin.jvm.internal.j.d(string, "toString(...)");
        return string;
    }

    @NotNull
    public final String replace(@NotNull CharSequence input, @NotNull Function1<? super k, ? extends CharSequence> transform) {
        kotlin.jvm.internal.j.e(input, "input");
        kotlin.jvm.internal.j.e(transform, "transform");
        int iIntValue = 0;
        k kVarFind$default = find$default(this, input, 0, 2, null);
        if (kVarFind$default == null) {
            return input.toString();
        }
        int length = input.length();
        StringBuilder sb = new StringBuilder(length);
        do {
            sb.append(input, iIntValue, kVarFind$default.a().getStart().intValue());
            sb.append(transform.invoke(kVarFind$default));
            iIntValue = kVarFind$default.a().getEndInclusive().intValue() + 1;
            kVarFind$default = kVarFind$default.next();
            if (iIntValue >= length) {
                break;
            }
        } while (kVarFind$default != null);
        if (iIntValue < length) {
            sb.append(input, iIntValue, length);
        }
        String string = sb.toString();
        kotlin.jvm.internal.j.d(string, "toString(...)");
        return string;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Regex(@NotNull String pattern) {
        kotlin.jvm.internal.j.e(pattern, "pattern");
        Pattern patternCompile = Pattern.compile(pattern);
        kotlin.jvm.internal.j.d(patternCompile, "compile(...)");
        this(patternCompile);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Regex(@NotNull String pattern, @NotNull RegexOption option) {
        kotlin.jvm.internal.j.e(pattern, "pattern");
        kotlin.jvm.internal.j.e(option, "option");
        Pattern patternCompile = Pattern.compile(pattern, INSTANCE.b(option.getValue()));
        kotlin.jvm.internal.j.d(patternCompile, "compile(...)");
        this(patternCompile);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Regex(@NotNull String pattern, @NotNull Set<? extends RegexOption> options) {
        kotlin.jvm.internal.j.e(pattern, "pattern");
        kotlin.jvm.internal.j.e(options, "options");
        Pattern patternCompile = Pattern.compile(pattern, INSTANCE.b(o.j(options)));
        kotlin.jvm.internal.j.d(patternCompile, "compile(...)");
        this(patternCompile);
    }
}
