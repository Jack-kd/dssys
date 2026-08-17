package androidx.work.impl;

import android.content.Context;
import androidx.work.Configuration;
import androidx.work.R;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.greedy.GreedyScheduler;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.utils.taskexecutor.SerialExecutor;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.m;
import kotlin.collections.q;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function6;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000P\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0003\u001a%\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007¢\u0006\u0002\b\b\u001aß\u0001\u0010\t\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\u0097\u0001\b\u0002\u0010\u0010\u001a\u0090\u0001\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0002\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0004\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0006\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\n\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\f\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u00140\u0011j\u0002`\u0016H\u0007¢\u0006\u0002\b\u0017\u001a>\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002\u001a®\u0001\u0010\u0019\u001a\u0090\u0001\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0002\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0004\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0006\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\n\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\f\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u00140\u0011j\u0002`\u00162\u0012\u0010\u0019\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00150\u001a\"\u00020\u0015¢\u0006\u0002\u0010\u001b* \u0002\u0010\u001c\"\u008c\u0001\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0002\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0004\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0006\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\n\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\f\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u00140\u00112\u008c\u0001\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0002\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0004\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0006\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\n\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\f\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u00140\u0011¨\u0006\u001d"}, d2 = {"TestWorkManagerImpl", "Landroidx/work/impl/WorkManagerImpl;", com.umeng.analytics.pro.g.f49337X, "Landroid/content/Context;", "configuration", "Landroidx/work/Configuration;", "workTaskExecutor", "Landroidx/work/impl/utils/taskexecutor/TaskExecutor;", "createTestWorkManager", "WorkManagerImpl", "workDatabase", "Landroidx/work/impl/WorkDatabase;", "trackers", "Landroidx/work/impl/constraints/trackers/Trackers;", "processor", "Landroidx/work/impl/Processor;", "schedulersCreator", "Lkotlin/Function6;", "Lkotlin/ParameterName;", "name", "", "Landroidx/work/impl/Scheduler;", "Landroidx/work/impl/SchedulersCreator;", "createWorkManager", "createSchedulers", "schedulers", "", "([Landroidx/work/impl/Scheduler;)Lkotlin/jvm/functions/Function6;", "SchedulersCreator", "work-runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class WorkManagerImplExtKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final List<Scheduler> createSchedulers(Context context, Configuration configuration, TaskExecutor taskExecutor, WorkDatabase workDatabase, Trackers trackers, Processor processor) {
        Scheduler schedulerCreateBestAvailableBackgroundScheduler = Schedulers.createBestAvailableBackgroundScheduler(context, workDatabase, configuration);
        kotlin.jvm.internal.j.d(schedulerCreateBestAvailableBackgroundScheduler, "createBestAvailableBackg…kDatabase, configuration)");
        return q.o(schedulerCreateBestAvailableBackgroundScheduler, new GreedyScheduler(context, configuration, trackers, processor, new WorkLauncherImpl(processor, taskExecutor), taskExecutor));
    }

    @JvmName(name = "createTestWorkManager")
    @NotNull
    public static final WorkManagerImpl createTestWorkManager(@NotNull Context context, @NotNull Configuration configuration, @NotNull TaskExecutor workTaskExecutor) {
        kotlin.jvm.internal.j.e(context, "context");
        kotlin.jvm.internal.j.e(configuration, "configuration");
        kotlin.jvm.internal.j.e(workTaskExecutor, "workTaskExecutor");
        WorkDatabase.Companion companion = WorkDatabase.INSTANCE;
        SerialExecutor serialTaskExecutor = workTaskExecutor.getSerialTaskExecutor();
        kotlin.jvm.internal.j.d(serialTaskExecutor, "workTaskExecutor.serialTaskExecutor");
        return createWorkManager$default(context, configuration, workTaskExecutor, companion.create(context, serialTaskExecutor, configuration.getClock(), true), null, null, null, 112, null);
    }

    @JvmOverloads
    @JvmName(name = "createWorkManager")
    @NotNull
    public static final WorkManagerImpl createWorkManager(@NotNull Context context, @NotNull Configuration configuration) {
        kotlin.jvm.internal.j.e(context, "context");
        kotlin.jvm.internal.j.e(configuration, "configuration");
        return createWorkManager$default(context, configuration, null, null, null, null, null, 124, null);
    }

    public static /* synthetic */ WorkManagerImpl createWorkManager$default(Context context, Configuration configuration, TaskExecutor taskExecutor, WorkDatabase workDatabase, Trackers trackers, Processor processor, Function6 function6, int i2, Object obj) {
        Trackers trackers2;
        if ((i2 & 4) != 0) {
            taskExecutor = new WorkManagerTaskExecutor(configuration.getTaskExecutor());
        }
        TaskExecutor taskExecutor2 = taskExecutor;
        if ((i2 & 8) != 0) {
            WorkDatabase.Companion companion = WorkDatabase.INSTANCE;
            Context applicationContext = context.getApplicationContext();
            kotlin.jvm.internal.j.d(applicationContext, "context.applicationContext");
            SerialExecutor serialTaskExecutor = taskExecutor2.getSerialTaskExecutor();
            kotlin.jvm.internal.j.d(serialTaskExecutor, "workTaskExecutor.serialTaskExecutor");
            workDatabase = companion.create(applicationContext, serialTaskExecutor, configuration.getClock(), context.getResources().getBoolean(R.bool.workmanager_test_configuration));
        }
        if ((i2 & 16) != 0) {
            Context applicationContext2 = context.getApplicationContext();
            kotlin.jvm.internal.j.d(applicationContext2, "context.applicationContext");
            trackers2 = new Trackers(applicationContext2, taskExecutor2, null, null, null, null, 60, null);
        } else {
            trackers2 = trackers;
        }
        return createWorkManager(context, configuration, taskExecutor2, workDatabase, trackers2, (i2 & 32) != 0 ? new Processor(context.getApplicationContext(), configuration, taskExecutor2, workDatabase) : processor, (i2 & 64) != 0 ? WorkManagerImplExtKt$WorkManagerImpl$1.INSTANCE : function6);
    }

    @NotNull
    public static final Function6<Context, Configuration, TaskExecutor, WorkDatabase, Trackers, Processor, List<Scheduler>> schedulers(@NotNull final Scheduler... schedulers) {
        kotlin.jvm.internal.j.e(schedulers, "schedulers");
        return new Function6<Context, Configuration, TaskExecutor, WorkDatabase, Trackers, Processor, List<? extends Scheduler>>() { // from class: androidx.work.impl.WorkManagerImplExtKt.schedulers.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(6);
            }

            @Override // kotlin.jvm.functions.Function6
            @NotNull
            public final List<Scheduler> invoke(@NotNull Context context, @NotNull Configuration configuration, @NotNull TaskExecutor taskExecutor, @NotNull WorkDatabase workDatabase, @NotNull Trackers trackers, @NotNull Processor processor) {
                kotlin.jvm.internal.j.e(context, "<anonymous parameter 0>");
                kotlin.jvm.internal.j.e(configuration, "<anonymous parameter 1>");
                kotlin.jvm.internal.j.e(taskExecutor, "<anonymous parameter 2>");
                kotlin.jvm.internal.j.e(workDatabase, "<anonymous parameter 3>");
                kotlin.jvm.internal.j.e(trackers, "<anonymous parameter 4>");
                kotlin.jvm.internal.j.e(processor, "<anonymous parameter 5>");
                return m.Z(schedulers);
            }
        };
    }

    @JvmOverloads
    @JvmName(name = "createWorkManager")
    @NotNull
    public static final WorkManagerImpl createWorkManager(@NotNull Context context, @NotNull Configuration configuration, @NotNull TaskExecutor workTaskExecutor) {
        kotlin.jvm.internal.j.e(context, "context");
        kotlin.jvm.internal.j.e(configuration, "configuration");
        kotlin.jvm.internal.j.e(workTaskExecutor, "workTaskExecutor");
        return createWorkManager$default(context, configuration, workTaskExecutor, null, null, null, null, 120, null);
    }

    @JvmOverloads
    @JvmName(name = "createWorkManager")
    @NotNull
    public static final WorkManagerImpl createWorkManager(@NotNull Context context, @NotNull Configuration configuration, @NotNull TaskExecutor workTaskExecutor, @NotNull WorkDatabase workDatabase) {
        kotlin.jvm.internal.j.e(context, "context");
        kotlin.jvm.internal.j.e(configuration, "configuration");
        kotlin.jvm.internal.j.e(workTaskExecutor, "workTaskExecutor");
        kotlin.jvm.internal.j.e(workDatabase, "workDatabase");
        return createWorkManager$default(context, configuration, workTaskExecutor, workDatabase, null, null, null, 112, null);
    }

    @JvmOverloads
    @JvmName(name = "createWorkManager")
    @NotNull
    public static final WorkManagerImpl createWorkManager(@NotNull Context context, @NotNull Configuration configuration, @NotNull TaskExecutor workTaskExecutor, @NotNull WorkDatabase workDatabase, @NotNull Trackers trackers) {
        kotlin.jvm.internal.j.e(context, "context");
        kotlin.jvm.internal.j.e(configuration, "configuration");
        kotlin.jvm.internal.j.e(workTaskExecutor, "workTaskExecutor");
        kotlin.jvm.internal.j.e(workDatabase, "workDatabase");
        kotlin.jvm.internal.j.e(trackers, "trackers");
        return createWorkManager$default(context, configuration, workTaskExecutor, workDatabase, trackers, null, null, 96, null);
    }

    @JvmOverloads
    @JvmName(name = "createWorkManager")
    @NotNull
    public static final WorkManagerImpl createWorkManager(@NotNull Context context, @NotNull Configuration configuration, @NotNull TaskExecutor workTaskExecutor, @NotNull WorkDatabase workDatabase, @NotNull Trackers trackers, @NotNull Processor processor) {
        kotlin.jvm.internal.j.e(context, "context");
        kotlin.jvm.internal.j.e(configuration, "configuration");
        kotlin.jvm.internal.j.e(workTaskExecutor, "workTaskExecutor");
        kotlin.jvm.internal.j.e(workDatabase, "workDatabase");
        kotlin.jvm.internal.j.e(trackers, "trackers");
        kotlin.jvm.internal.j.e(processor, "processor");
        return createWorkManager$default(context, configuration, workTaskExecutor, workDatabase, trackers, processor, null, 64, null);
    }

    @JvmOverloads
    @JvmName(name = "createWorkManager")
    @NotNull
    public static final WorkManagerImpl createWorkManager(@NotNull Context context, @NotNull Configuration configuration, @NotNull TaskExecutor workTaskExecutor, @NotNull WorkDatabase workDatabase, @NotNull Trackers trackers, @NotNull Processor processor, @NotNull Function6<? super Context, ? super Configuration, ? super TaskExecutor, ? super WorkDatabase, ? super Trackers, ? super Processor, ? extends List<? extends Scheduler>> schedulersCreator) {
        kotlin.jvm.internal.j.e(context, "context");
        kotlin.jvm.internal.j.e(configuration, "configuration");
        kotlin.jvm.internal.j.e(workTaskExecutor, "workTaskExecutor");
        kotlin.jvm.internal.j.e(workDatabase, "workDatabase");
        kotlin.jvm.internal.j.e(trackers, "trackers");
        kotlin.jvm.internal.j.e(processor, "processor");
        kotlin.jvm.internal.j.e(schedulersCreator, "schedulersCreator");
        return new WorkManagerImpl(context.getApplicationContext(), configuration, workTaskExecutor, workDatabase, schedulersCreator.invoke(context, configuration, workTaskExecutor, workDatabase, trackers, processor), processor, trackers);
    }
}
