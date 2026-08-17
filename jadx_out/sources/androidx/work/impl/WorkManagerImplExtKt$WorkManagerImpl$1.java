package androidx.work.impl;

import android.content.Context;
import androidx.work.Configuration;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.internal.FunctionReferenceImpl;
import org.jetbrains.annotations.NotNull;

@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public /* synthetic */ class WorkManagerImplExtKt$WorkManagerImpl$1 extends FunctionReferenceImpl implements Function6<Context, Configuration, TaskExecutor, WorkDatabase, Trackers, Processor, List<? extends Scheduler>> {
    public static final WorkManagerImplExtKt$WorkManagerImpl$1 INSTANCE = new WorkManagerImplExtKt$WorkManagerImpl$1();

    public WorkManagerImplExtKt$WorkManagerImpl$1() {
        super(6, WorkManagerImplExtKt.class, "createSchedulers", "createSchedulers(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/constraints/trackers/Trackers;Landroidx/work/impl/Processor;)Ljava/util/List;", 1);
    }

    @Override // kotlin.jvm.functions.Function6
    @NotNull
    public final List<Scheduler> invoke(@NotNull Context p02, @NotNull Configuration p12, @NotNull TaskExecutor p2, @NotNull WorkDatabase p3, @NotNull Trackers p4, @NotNull Processor p5) {
        kotlin.jvm.internal.j.e(p02, "p0");
        kotlin.jvm.internal.j.e(p12, "p1");
        kotlin.jvm.internal.j.e(p2, "p2");
        kotlin.jvm.internal.j.e(p3, "p3");
        kotlin.jvm.internal.j.e(p4, "p4");
        kotlin.jvm.internal.j.e(p5, "p5");
        return WorkManagerImplExtKt.createSchedulers(p02, p12, p2, p3, p4, p5);
    }
}
