package androidx.work.impl.model;

import androidx.annotation.IntRange;
import androidx.annotation.RestrictTo;
import androidx.arch.core.util.Function;
import androidx.core.location.LocationRequestCompat;
import androidx.room.ColumnInfo;
import androidx.room.Embedded;
import androidx.room.Entity;
import androidx.room.Index;
import androidx.room.PrimaryKey;
import androidx.room.Relation;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.Logger;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.OverwritingInputMerger;
import androidx.work.PeriodicWorkRequest;
import androidx.work.WorkInfo;
import androidx.work.WorkRequest;
import com.baidu.mobads.sdk.internal.bn;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.collections.r;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.f;
import kotlin.jvm.internal.j;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\bD\b\u0087\b\u0018\u0000 j2\u00020\u0001:\u0003jklBé\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\n\u001a\u00020\b\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\r\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u000f\u0012\b\b\u0003\u0010\u0012\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0013\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0019\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u001b\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u001f\u001a\u00020\u000b\u0012\b\b\u0002\u0010 \u001a\u00020\u0011\u0012\b\b\u0002\u0010!\u001a\u00020\u0011¢\u0006\u0004\b\"\u0010#B\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010$\u001a\u00020\u0002¢\u0006\u0004\b\"\u0010%B\u0019\b\u0016\u0012\u0006\u0010&\u001a\u00020\u0002\u0012\u0006\u0010'\u001a\u00020\u0000¢\u0006\u0004\b\"\u0010(J\u0015\u0010*\u001a\u00020)2\u0006\u0010\u0015\u001a\u00020\u000b¢\u0006\u0004\b*\u0010+J\u0015\u0010,\u001a\u00020)2\u0006\u0010\r\u001a\u00020\u000b¢\u0006\u0004\b,\u0010+J\u001d\u0010,\u001a\u00020)2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b,\u0010-J\r\u0010.\u001a\u00020\u000b¢\u0006\u0004\b.\u0010/J\r\u00100\u001a\u00020\u0019¢\u0006\u0004\b0\u00101J\u000f\u00102\u001a\u00020\u0002H\u0016¢\u0006\u0004\b2\u00103J\u0010\u00104\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b4\u00103J\u0010\u00105\u001a\u00020\u0004HÆ\u0003¢\u0006\u0004\b5\u00106J\u0010\u00107\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b7\u00103J\u0010\u00108\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b8\u00103J\u0010\u00109\u001a\u00020\bHÆ\u0003¢\u0006\u0004\b9\u0010:J\u0010\u0010;\u001a\u00020\bHÆ\u0003¢\u0006\u0004\b;\u0010:J\u0010\u0010<\u001a\u00020\u000bHÆ\u0003¢\u0006\u0004\b<\u0010/J\u0010\u0010=\u001a\u00020\u000bHÆ\u0003¢\u0006\u0004\b=\u0010/J\u0010\u0010>\u001a\u00020\u000bHÆ\u0003¢\u0006\u0004\b>\u0010/J\u0010\u0010?\u001a\u00020\u000fHÆ\u0003¢\u0006\u0004\b?\u0010@J\u0010\u0010A\u001a\u00020\u0011HÆ\u0003¢\u0006\u0004\bA\u0010BJ\u0010\u0010C\u001a\u00020\u0013HÆ\u0003¢\u0006\u0004\bC\u0010DJ\u0010\u0010E\u001a\u00020\u000bHÆ\u0003¢\u0006\u0004\bE\u0010/J\u0010\u0010F\u001a\u00020\u000bHÆ\u0003¢\u0006\u0004\bF\u0010/J\u0010\u0010G\u001a\u00020\u000bHÆ\u0003¢\u0006\u0004\bG\u0010/J\u0010\u0010H\u001a\u00020\u000bHÆ\u0003¢\u0006\u0004\bH\u0010/J\u0010\u0010I\u001a\u00020\u0019HÆ\u0003¢\u0006\u0004\bI\u00101J\u0010\u0010J\u001a\u00020\u001bHÆ\u0003¢\u0006\u0004\bJ\u0010KJ\u0010\u0010L\u001a\u00020\u0011HÆ\u0003¢\u0006\u0004\bL\u0010BJ\u0010\u0010M\u001a\u00020\u0011HÆ\u0003¢\u0006\u0004\bM\u0010BJ\u0010\u0010N\u001a\u00020\u000bHÆ\u0003¢\u0006\u0004\bN\u0010/J\u0010\u0010O\u001a\u00020\u0011HÆ\u0003¢\u0006\u0004\bO\u0010BJ\u0010\u0010P\u001a\u00020\u0011HÆ\u0003¢\u0006\u0004\bP\u0010BJö\u0001\u0010Q\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\b2\b\b\u0002\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\r\u001a\u00020\u000b2\b\b\u0002\u0010\u000e\u001a\u00020\u000b2\b\b\u0002\u0010\u0010\u001a\u00020\u000f2\b\b\u0003\u0010\u0012\u001a\u00020\u00112\b\b\u0002\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u0015\u001a\u00020\u000b2\b\b\u0002\u0010\u0016\u001a\u00020\u000b2\b\b\u0002\u0010\u0017\u001a\u00020\u000b2\b\b\u0002\u0010\u0018\u001a\u00020\u000b2\b\b\u0002\u0010\u001a\u001a\u00020\u00192\b\b\u0002\u0010\u001c\u001a\u00020\u001b2\b\b\u0002\u0010\u001d\u001a\u00020\u00112\b\b\u0002\u0010\u001e\u001a\u00020\u00112\b\b\u0002\u0010\u001f\u001a\u00020\u000b2\b\b\u0002\u0010 \u001a\u00020\u00112\b\b\u0002\u0010!\u001a\u00020\u0011HÆ\u0001¢\u0006\u0004\bQ\u0010RJ\u0010\u0010S\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\bS\u0010BJ\u001a\u0010T\u001a\u00020\u00192\b\u0010'\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\bT\u0010UR\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010VR\u0016\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010WR\u0016\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010VR\u0016\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010VR\u0016\u0010\t\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\t\u0010XR\u0016\u0010\n\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\n\u0010XR\u0016\u0010\f\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\f\u0010YR\u0016\u0010\r\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\r\u0010YR\u0016\u0010\u000e\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010YR\u0016\u0010\u0010\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010ZR\u0016\u0010\u0012\u001a\u00020\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010[R\u0016\u0010\u0014\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\\R\u0016\u0010\u0015\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010YR\u0016\u0010\u0016\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010YR\u0016\u0010\u0017\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010YR\u0016\u0010\u0018\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010YR\u0016\u0010\u001a\u001a\u00020\u00198\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010]R\u0016\u0010\u001c\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010^R\"\u0010\u001d\u001a\u00020\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010[\u001a\u0004\b_\u0010B\"\u0004\b`\u0010aR\u001a\u0010\u001e\u001a\u00020\u00118\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u001e\u0010[\u001a\u0004\bb\u0010BR\"\u0010\u001f\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010Y\u001a\u0004\bc\u0010/\"\u0004\bd\u0010+R\"\u0010 \u001a\u00020\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b \u0010[\u001a\u0004\be\u0010B\"\u0004\bf\u0010aR\u001a\u0010!\u001a\u00020\u00118\u0006X\u0087\u0004¢\u0006\f\n\u0004\b!\u0010[\u001a\u0004\bg\u0010BR\u0011\u0010h\u001a\u00020\u00198F¢\u0006\u0006\u001a\u0004\bh\u00101R\u0011\u0010i\u001a\u00020\u00198F¢\u0006\u0006\u001a\u0004\bi\u00101¨\u0006m"}, d2 = {"Landroidx/work/impl/model/WorkSpec;", "", "", "id", "Landroidx/work/WorkInfo$State;", "state", "workerClassName", "inputMergerClassName", "Landroidx/work/Data;", "input", "output", "", "initialDelay", "intervalDuration", "flexDuration", "Landroidx/work/Constraints;", "constraints", "", "runAttemptCount", "Landroidx/work/BackoffPolicy;", "backoffPolicy", "backoffDelayDuration", "lastEnqueueTime", "minimumRetentionDuration", "scheduleRequestedAt", "", "expedited", "Landroidx/work/OutOfQuotaPolicy;", "outOfQuotaPolicy", "periodCount", "generation", "nextScheduleTimeOverride", "nextScheduleTimeOverrideGeneration", "stopReason", "<init>", "(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJII)V", "workerClassName_", "(Ljava/lang/String;Ljava/lang/String;)V", "newId", "other", "(Ljava/lang/String;Landroidx/work/impl/model/WorkSpec;)V", "Lkotlin/j;", "setBackoffDelayDuration", "(J)V", "setPeriodic", "(JJ)V", "calculateNextRunTime", "()J", "hasConstraints", "()Z", "toString", "()Ljava/lang/String;", "component1", "component2", "()Landroidx/work/WorkInfo$State;", "component3", "component4", "component5", "()Landroidx/work/Data;", "component6", "component7", "component8", "component9", "component10", "()Landroidx/work/Constraints;", "component11", "()I", "component12", "()Landroidx/work/BackoffPolicy;", "component13", "component14", "component15", "component16", "component17", "component18", "()Landroidx/work/OutOfQuotaPolicy;", "component19", "component20", "component21", "component22", "component23", "copy", "(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJII)Landroidx/work/impl/model/WorkSpec;", "hashCode", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "Landroidx/work/WorkInfo$State;", "Landroidx/work/Data;", "J", "Landroidx/work/Constraints;", "I", "Landroidx/work/BackoffPolicy;", "Z", "Landroidx/work/OutOfQuotaPolicy;", "getPeriodCount", "setPeriodCount", "(I)V", "getGeneration", "getNextScheduleTimeOverride", "setNextScheduleTimeOverride", "getNextScheduleTimeOverrideGeneration", "setNextScheduleTimeOverrideGeneration", "getStopReason", "isPeriodic", "isBackedOff", "Companion", "IdAndState", "WorkInfoPojo", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@Entity(indices = {@Index({"schedule_requested_at"}), @Index({"last_enqueue_time"})})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
@SourceDebugExtension({"SMAP\nWorkSpec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkSpec.kt\nandroidx/work/impl/model/WorkSpec\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,544:1\n1549#2:545\n1620#2,3:546\n*S KotlinDebug\n*F\n+ 1 WorkSpec.kt\nandroidx/work/impl/model/WorkSpec\n*L\n482#1:545\n482#1:546,3\n*E\n"})
/* loaded from: classes.dex */
public final /* data */ class WorkSpec {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final long SCHEDULE_NOT_REQUESTED_YET = -1;

    @NotNull
    private static final String TAG;

    @JvmField
    @NotNull
    public static final Function<List<WorkInfoPojo>, List<WorkInfo>> WORK_INFO_MAPPER;

    @JvmField
    @ColumnInfo(name = "backoff_delay_duration")
    public long backoffDelayDuration;

    @JvmField
    @ColumnInfo(name = "backoff_policy")
    @NotNull
    public BackoffPolicy backoffPolicy;

    @Embedded
    @JvmField
    @NotNull
    public Constraints constraints;

    @JvmField
    @ColumnInfo(name = "run_in_foreground")
    public boolean expedited;

    @JvmField
    @ColumnInfo(name = "flex_duration")
    public long flexDuration;

    @ColumnInfo(defaultValue = "0")
    private final int generation;

    @PrimaryKey
    @JvmField
    @ColumnInfo(name = "id")
    @NotNull
    public final String id;

    @JvmField
    @ColumnInfo(name = "initial_delay")
    public long initialDelay;

    @JvmField
    @ColumnInfo(name = "input")
    @NotNull
    public Data input;

    @JvmField
    @ColumnInfo(name = "input_merger_class_name")
    @NotNull
    public String inputMergerClassName;

    @JvmField
    @ColumnInfo(name = "interval_duration")
    public long intervalDuration;

    @JvmField
    @ColumnInfo(defaultValue = "-1", name = "last_enqueue_time")
    public long lastEnqueueTime;

    @JvmField
    @ColumnInfo(name = "minimum_retention_duration")
    public long minimumRetentionDuration;

    @ColumnInfo(defaultValue = "9223372036854775807", name = "next_schedule_time_override")
    private long nextScheduleTimeOverride;

    @ColumnInfo(defaultValue = "0", name = "next_schedule_time_override_generation")
    private int nextScheduleTimeOverrideGeneration;

    @JvmField
    @ColumnInfo(name = "out_of_quota_policy")
    @NotNull
    public OutOfQuotaPolicy outOfQuotaPolicy;

    @JvmField
    @ColumnInfo(name = "output")
    @NotNull
    public Data output;

    @ColumnInfo(defaultValue = "0", name = "period_count")
    private int periodCount;

    @JvmField
    @ColumnInfo(name = "run_attempt_count")
    public int runAttemptCount;

    @JvmField
    @ColumnInfo(name = "schedule_requested_at")
    public long scheduleRequestedAt;

    @JvmField
    @ColumnInfo(name = "state")
    @NotNull
    public WorkInfo.State state;

    @ColumnInfo(defaultValue = "-256", name = "stop_reason")
    private final int stopReason;

    @JvmField
    @ColumnInfo(name = "worker_class_name")
    @NotNull
    public String workerClassName;

    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J^\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R(\u0010\u0007\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\t0\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Landroidx/work/impl/model/WorkSpec$Companion;", "", "()V", "SCHEDULE_NOT_REQUESTED_YET", "", "TAG", "", "WORK_INFO_MAPPER", "Landroidx/arch/core/util/Function;", "", "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;", "Landroidx/work/WorkInfo;", "calculateNextRunTime", "isBackedOff", "", "runAttemptCount", "", "backoffPolicy", "Landroidx/work/BackoffPolicy;", "backoffDelayDuration", "lastEnqueueTime", "periodCount", "isPeriodic", "initialDelay", "flexDuration", "intervalDuration", "nextScheduleTimeOverride", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(f fVar) {
            this();
        }

        public final long calculateNextRunTime(boolean isBackedOff, int runAttemptCount, @NotNull BackoffPolicy backoffPolicy, long backoffDelayDuration, long lastEnqueueTime, int periodCount, boolean isPeriodic, long initialDelay, long flexDuration, long intervalDuration, long nextScheduleTimeOverride) {
            j.e(backoffPolicy, "backoffPolicy");
            if (nextScheduleTimeOverride != LocationRequestCompat.PASSIVE_INTERVAL && isPeriodic) {
                return periodCount == 0 ? nextScheduleTimeOverride : E1.f.c(nextScheduleTimeOverride, PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS + lastEnqueueTime);
            }
            if (isBackedOff) {
                return E1.f.e(backoffPolicy == BackoffPolicy.LINEAR ? backoffDelayDuration * runAttemptCount : (long) Math.scalb(backoffDelayDuration, runAttemptCount - 1), WorkRequest.MAX_BACKOFF_MILLIS) + lastEnqueueTime;
            }
            if (!isPeriodic) {
                return lastEnqueueTime == -1 ? LocationRequestCompat.PASSIVE_INTERVAL : lastEnqueueTime + initialDelay;
            }
            long j2 = periodCount == 0 ? lastEnqueueTime + initialDelay : lastEnqueueTime + intervalDuration;
            return (flexDuration == intervalDuration || periodCount != 0) ? j2 : j2 + (intervalDuration - flexDuration);
        }

        private Companion() {
        }
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\t\u0010\b\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0012\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Landroidx/work/impl/model/WorkSpec$IdAndState;", "", "id", "", "state", "Landroidx/work/WorkInfo$State;", "(Ljava/lang/String;Landroidx/work/WorkInfo$State;)V", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final /* data */ class IdAndState {

        @JvmField
        @ColumnInfo(name = "id")
        @NotNull
        public String id;

        @JvmField
        @ColumnInfo(name = "state")
        @NotNull
        public WorkInfo.State state;

        public IdAndState(@NotNull String id, @NotNull WorkInfo.State state) {
            j.e(id, "id");
            j.e(state, "state");
            this.id = id;
            this.state = state;
        }

        public static /* synthetic */ IdAndState copy$default(IdAndState idAndState, String str, WorkInfo.State state, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = idAndState.id;
            }
            if ((i2 & 2) != 0) {
                state = idAndState.state;
            }
            return idAndState.copy(str, state);
        }

        @NotNull
        /* renamed from: component1, reason: from getter */
        public final String getId() {
            return this.id;
        }

        @NotNull
        /* renamed from: component2, reason: from getter */
        public final WorkInfo.State getState() {
            return this.state;
        }

        @NotNull
        public final IdAndState copy(@NotNull String id, @NotNull WorkInfo.State state) {
            j.e(id, "id");
            j.e(state, "state");
            return new IdAndState(id, state);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof IdAndState)) {
                return false;
            }
            IdAndState idAndState = (IdAndState) other;
            return j.a(this.id, idAndState.id) && this.state == idAndState.state;
        }

        public int hashCode() {
            return (this.id.hashCode() * 31) + this.state.hashCode();
        }

        @NotNull
        public String toString() {
            return "IdAndState(id=" + this.id + ", state=" + this.state + ')';
        }
    }

    static {
        String strTagWithPrefix = Logger.tagWithPrefix("WorkSpec");
        j.d(strTagWithPrefix, "tagWithPrefix(\"WorkSpec\")");
        TAG = strTagWithPrefix;
        WORK_INFO_MAPPER = new Function() { // from class: androidx.work.impl.model.a
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                return WorkSpec.WORK_INFO_MAPPER$lambda$1((List) obj);
            }
        };
    }

    public WorkSpec(@NotNull String id, @NotNull WorkInfo.State state, @NotNull String workerClassName, @NotNull String inputMergerClassName, @NotNull Data input, @NotNull Data output, long j2, long j3, long j4, @NotNull Constraints constraints, @IntRange(from = 0) int i2, @NotNull BackoffPolicy backoffPolicy, long j5, long j6, long j7, long j8, boolean z2, @NotNull OutOfQuotaPolicy outOfQuotaPolicy, int i3, int i4, long j9, int i5, int i6) {
        j.e(id, "id");
        j.e(state, "state");
        j.e(workerClassName, "workerClassName");
        j.e(inputMergerClassName, "inputMergerClassName");
        j.e(input, "input");
        j.e(output, "output");
        j.e(constraints, "constraints");
        j.e(backoffPolicy, "backoffPolicy");
        j.e(outOfQuotaPolicy, "outOfQuotaPolicy");
        this.id = id;
        this.state = state;
        this.workerClassName = workerClassName;
        this.inputMergerClassName = inputMergerClassName;
        this.input = input;
        this.output = output;
        this.initialDelay = j2;
        this.intervalDuration = j3;
        this.flexDuration = j4;
        this.constraints = constraints;
        this.runAttemptCount = i2;
        this.backoffPolicy = backoffPolicy;
        this.backoffDelayDuration = j5;
        this.lastEnqueueTime = j6;
        this.minimumRetentionDuration = j7;
        this.scheduleRequestedAt = j8;
        this.expedited = z2;
        this.outOfQuotaPolicy = outOfQuotaPolicy;
        this.periodCount = i3;
        this.generation = i4;
        this.nextScheduleTimeOverride = j9;
        this.nextScheduleTimeOverrideGeneration = i5;
        this.stopReason = i6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List WORK_INFO_MAPPER$lambda$1(List list) {
        if (list == null) {
            return null;
        }
        List list2 = list;
        ArrayList arrayList = new ArrayList(r.v(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(((WorkInfoPojo) it.next()).toWorkInfo());
        }
        return arrayList;
    }

    public static /* synthetic */ WorkSpec copy$default(WorkSpec workSpec, String str, WorkInfo.State state, String str2, String str3, Data data, Data data2, long j2, long j3, long j4, Constraints constraints, int i2, BackoffPolicy backoffPolicy, long j5, long j6, long j7, long j8, boolean z2, OutOfQuotaPolicy outOfQuotaPolicy, int i3, int i4, long j9, int i5, int i6, int i7, Object obj) {
        String str4 = (i7 & 1) != 0 ? workSpec.id : str;
        WorkInfo.State state2 = (i7 & 2) != 0 ? workSpec.state : state;
        String str5 = (i7 & 4) != 0 ? workSpec.workerClassName : str2;
        String str6 = (i7 & 8) != 0 ? workSpec.inputMergerClassName : str3;
        Data data3 = (i7 & 16) != 0 ? workSpec.input : data;
        Data data4 = (i7 & 32) != 0 ? workSpec.output : data2;
        long j10 = (i7 & 64) != 0 ? workSpec.initialDelay : j2;
        long j11 = (i7 & 128) != 0 ? workSpec.intervalDuration : j3;
        long j12 = (i7 & 256) != 0 ? workSpec.flexDuration : j4;
        Constraints constraints2 = (i7 & 512) != 0 ? workSpec.constraints : constraints;
        int i8 = (i7 & 1024) != 0 ? workSpec.runAttemptCount : i2;
        String str7 = str4;
        BackoffPolicy backoffPolicy2 = (i7 & 2048) != 0 ? workSpec.backoffPolicy : backoffPolicy;
        WorkInfo.State state3 = state2;
        long j13 = (i7 & 4096) != 0 ? workSpec.backoffDelayDuration : j5;
        long j14 = (i7 & 8192) != 0 ? workSpec.lastEnqueueTime : j6;
        long j15 = (i7 & 16384) != 0 ? workSpec.minimumRetentionDuration : j7;
        long j16 = (i7 & 32768) != 0 ? workSpec.scheduleRequestedAt : j8;
        return workSpec.copy(str7, state3, str5, str6, data3, data4, j10, j11, j12, constraints2, i8, backoffPolicy2, j13, j14, j15, j16, (i7 & 65536) != 0 ? workSpec.expedited : z2, (i7 & 131072) != 0 ? workSpec.outOfQuotaPolicy : outOfQuotaPolicy, (i7 & 262144) != 0 ? workSpec.periodCount : i3, (i7 & 524288) != 0 ? workSpec.generation : i4, (i7 & 1048576) != 0 ? workSpec.nextScheduleTimeOverride : j9, (i7 & 2097152) != 0 ? workSpec.nextScheduleTimeOverrideGeneration : i5, (i7 & 4194304) != 0 ? workSpec.stopReason : i6);
    }

    public final long calculateNextRunTime() {
        return INSTANCE.calculateNextRunTime(isBackedOff(), this.runAttemptCount, this.backoffPolicy, this.backoffDelayDuration, this.lastEnqueueTime, this.periodCount, isPeriodic(), this.initialDelay, this.flexDuration, this.intervalDuration, this.nextScheduleTimeOverride);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    @NotNull
    /* renamed from: component10, reason: from getter */
    public final Constraints getConstraints() {
        return this.constraints;
    }

    /* renamed from: component11, reason: from getter */
    public final int getRunAttemptCount() {
        return this.runAttemptCount;
    }

    @NotNull
    /* renamed from: component12, reason: from getter */
    public final BackoffPolicy getBackoffPolicy() {
        return this.backoffPolicy;
    }

    /* renamed from: component13, reason: from getter */
    public final long getBackoffDelayDuration() {
        return this.backoffDelayDuration;
    }

    /* renamed from: component14, reason: from getter */
    public final long getLastEnqueueTime() {
        return this.lastEnqueueTime;
    }

    /* renamed from: component15, reason: from getter */
    public final long getMinimumRetentionDuration() {
        return this.minimumRetentionDuration;
    }

    /* renamed from: component16, reason: from getter */
    public final long getScheduleRequestedAt() {
        return this.scheduleRequestedAt;
    }

    /* renamed from: component17, reason: from getter */
    public final boolean getExpedited() {
        return this.expedited;
    }

    @NotNull
    /* renamed from: component18, reason: from getter */
    public final OutOfQuotaPolicy getOutOfQuotaPolicy() {
        return this.outOfQuotaPolicy;
    }

    /* renamed from: component19, reason: from getter */
    public final int getPeriodCount() {
        return this.periodCount;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final WorkInfo.State getState() {
        return this.state;
    }

    /* renamed from: component20, reason: from getter */
    public final int getGeneration() {
        return this.generation;
    }

    /* renamed from: component21, reason: from getter */
    public final long getNextScheduleTimeOverride() {
        return this.nextScheduleTimeOverride;
    }

    /* renamed from: component22, reason: from getter */
    public final int getNextScheduleTimeOverrideGeneration() {
        return this.nextScheduleTimeOverrideGeneration;
    }

    /* renamed from: component23, reason: from getter */
    public final int getStopReason() {
        return this.stopReason;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final String getWorkerClassName() {
        return this.workerClassName;
    }

    @NotNull
    /* renamed from: component4, reason: from getter */
    public final String getInputMergerClassName() {
        return this.inputMergerClassName;
    }

    @NotNull
    /* renamed from: component5, reason: from getter */
    public final Data getInput() {
        return this.input;
    }

    @NotNull
    /* renamed from: component6, reason: from getter */
    public final Data getOutput() {
        return this.output;
    }

    /* renamed from: component7, reason: from getter */
    public final long getInitialDelay() {
        return this.initialDelay;
    }

    /* renamed from: component8, reason: from getter */
    public final long getIntervalDuration() {
        return this.intervalDuration;
    }

    /* renamed from: component9, reason: from getter */
    public final long getFlexDuration() {
        return this.flexDuration;
    }

    @NotNull
    public final WorkSpec copy(@NotNull String id, @NotNull WorkInfo.State state, @NotNull String workerClassName, @NotNull String inputMergerClassName, @NotNull Data input, @NotNull Data output, long initialDelay, long intervalDuration, long flexDuration, @NotNull Constraints constraints, @IntRange(from = 0) int runAttemptCount, @NotNull BackoffPolicy backoffPolicy, long backoffDelayDuration, long lastEnqueueTime, long minimumRetentionDuration, long scheduleRequestedAt, boolean expedited, @NotNull OutOfQuotaPolicy outOfQuotaPolicy, int periodCount, int generation, long nextScheduleTimeOverride, int nextScheduleTimeOverrideGeneration, int stopReason) {
        j.e(id, "id");
        j.e(state, "state");
        j.e(workerClassName, "workerClassName");
        j.e(inputMergerClassName, "inputMergerClassName");
        j.e(input, "input");
        j.e(output, "output");
        j.e(constraints, "constraints");
        j.e(backoffPolicy, "backoffPolicy");
        j.e(outOfQuotaPolicy, "outOfQuotaPolicy");
        return new WorkSpec(id, state, workerClassName, inputMergerClassName, input, output, initialDelay, intervalDuration, flexDuration, constraints, runAttemptCount, backoffPolicy, backoffDelayDuration, lastEnqueueTime, minimumRetentionDuration, scheduleRequestedAt, expedited, outOfQuotaPolicy, periodCount, generation, nextScheduleTimeOverride, nextScheduleTimeOverrideGeneration, stopReason);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof WorkSpec)) {
            return false;
        }
        WorkSpec workSpec = (WorkSpec) other;
        return j.a(this.id, workSpec.id) && this.state == workSpec.state && j.a(this.workerClassName, workSpec.workerClassName) && j.a(this.inputMergerClassName, workSpec.inputMergerClassName) && j.a(this.input, workSpec.input) && j.a(this.output, workSpec.output) && this.initialDelay == workSpec.initialDelay && this.intervalDuration == workSpec.intervalDuration && this.flexDuration == workSpec.flexDuration && j.a(this.constraints, workSpec.constraints) && this.runAttemptCount == workSpec.runAttemptCount && this.backoffPolicy == workSpec.backoffPolicy && this.backoffDelayDuration == workSpec.backoffDelayDuration && this.lastEnqueueTime == workSpec.lastEnqueueTime && this.minimumRetentionDuration == workSpec.minimumRetentionDuration && this.scheduleRequestedAt == workSpec.scheduleRequestedAt && this.expedited == workSpec.expedited && this.outOfQuotaPolicy == workSpec.outOfQuotaPolicy && this.periodCount == workSpec.periodCount && this.generation == workSpec.generation && this.nextScheduleTimeOverride == workSpec.nextScheduleTimeOverride && this.nextScheduleTimeOverrideGeneration == workSpec.nextScheduleTimeOverrideGeneration && this.stopReason == workSpec.stopReason;
    }

    public final int getGeneration() {
        return this.generation;
    }

    public final long getNextScheduleTimeOverride() {
        return this.nextScheduleTimeOverride;
    }

    public final int getNextScheduleTimeOverrideGeneration() {
        return this.nextScheduleTimeOverrideGeneration;
    }

    public final int getPeriodCount() {
        return this.periodCount;
    }

    public final int getStopReason() {
        return this.stopReason;
    }

    public final boolean hasConstraints() {
        return !j.a(Constraints.NONE, this.constraints);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int iHashCode = ((((((((((((((((((((((((((((((this.id.hashCode() * 31) + this.state.hashCode()) * 31) + this.workerClassName.hashCode()) * 31) + this.inputMergerClassName.hashCode()) * 31) + this.input.hashCode()) * 31) + this.output.hashCode()) * 31) + Long.hashCode(this.initialDelay)) * 31) + Long.hashCode(this.intervalDuration)) * 31) + Long.hashCode(this.flexDuration)) * 31) + this.constraints.hashCode()) * 31) + Integer.hashCode(this.runAttemptCount)) * 31) + this.backoffPolicy.hashCode()) * 31) + Long.hashCode(this.backoffDelayDuration)) * 31) + Long.hashCode(this.lastEnqueueTime)) * 31) + Long.hashCode(this.minimumRetentionDuration)) * 31) + Long.hashCode(this.scheduleRequestedAt)) * 31;
        boolean z2 = this.expedited;
        int i2 = z2;
        if (z2 != 0) {
            i2 = 1;
        }
        return ((((((((((((iHashCode + i2) * 31) + this.outOfQuotaPolicy.hashCode()) * 31) + Integer.hashCode(this.periodCount)) * 31) + Integer.hashCode(this.generation)) * 31) + Long.hashCode(this.nextScheduleTimeOverride)) * 31) + Integer.hashCode(this.nextScheduleTimeOverrideGeneration)) * 31) + Integer.hashCode(this.stopReason);
    }

    public final boolean isBackedOff() {
        return this.state == WorkInfo.State.ENQUEUED && this.runAttemptCount > 0;
    }

    public final boolean isPeriodic() {
        return this.intervalDuration != 0;
    }

    public final void setBackoffDelayDuration(long backoffDelayDuration) {
        if (backoffDelayDuration > WorkRequest.MAX_BACKOFF_MILLIS) {
            Logger.get().warning(TAG, "Backoff delay duration exceeds maximum value");
        }
        if (backoffDelayDuration < 10000) {
            Logger.get().warning(TAG, "Backoff delay duration less than minimum value");
        }
        this.backoffDelayDuration = E1.f.g(backoffDelayDuration, 10000L, WorkRequest.MAX_BACKOFF_MILLIS);
    }

    public final void setNextScheduleTimeOverride(long j2) {
        this.nextScheduleTimeOverride = j2;
    }

    public final void setNextScheduleTimeOverrideGeneration(int i2) {
        this.nextScheduleTimeOverrideGeneration = i2;
    }

    public final void setPeriodCount(int i2) {
        this.periodCount = i2;
    }

    public final void setPeriodic(long intervalDuration) {
        if (intervalDuration < PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS) {
            Logger.get().warning(TAG, "Interval duration lesser than minimum allowed value; Changed to 900000");
        }
        setPeriodic(E1.f.c(intervalDuration, PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS), E1.f.c(intervalDuration, PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS));
    }

    @NotNull
    public String toString() {
        return "{WorkSpec: " + this.id + '}';
    }

    public final void setPeriodic(long intervalDuration, long flexDuration) {
        if (intervalDuration < PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS) {
            Logger.get().warning(TAG, "Interval duration lesser than minimum allowed value; Changed to 900000");
        }
        this.intervalDuration = E1.f.c(intervalDuration, PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS);
        if (flexDuration < PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS) {
            Logger.get().warning(TAG, "Flex duration lesser than minimum allowed value; Changed to 300000");
        }
        if (flexDuration > this.intervalDuration) {
            Logger.get().warning(TAG, "Flex duration greater than interval duration; Changed to " + intervalDuration);
        }
        this.flexDuration = E1.f.g(flexDuration, PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS, this.intervalDuration);
    }

    @Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b'\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B§\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0012\u001a\u00020\t\u0012\b\b\u0002\u0010\u0013\u001a\u00020\t\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u000f\u0012\u0006\u0010\u0016\u001a\u00020\t\u0012\u0006\u0010\u0017\u001a\u00020\u000f\u0012\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00030\u0019\u0012\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00070\u0019¢\u0006\u0002\u0010\u001bJ\b\u0010@\u001a\u00020\tH\u0002J\t\u0010A\u001a\u00020\u0003HÆ\u0003J\t\u0010B\u001a\u00020\tHÆ\u0003J\t\u0010C\u001a\u00020\tHÆ\u0003J\t\u0010D\u001a\u00020\u000fHÆ\u0003J\t\u0010E\u001a\u00020\u000fHÆ\u0003J\t\u0010F\u001a\u00020\tHÆ\u0003J\t\u0010G\u001a\u00020\u000fHÆ\u0003J\u000f\u0010H\u001a\b\u0012\u0004\u0012\u00020\u00030\u0019HÆ\u0003J\u000f\u0010I\u001a\b\u0012\u0004\u0012\u00020\u00070\u0019HÆ\u0003J\t\u0010J\u001a\u00020\u0005HÆ\u0003J\t\u0010K\u001a\u00020\u0007HÆ\u0003J\t\u0010L\u001a\u00020\tHÆ\u0003J\t\u0010M\u001a\u00020\tHÆ\u0003J\t\u0010N\u001a\u00020\tHÆ\u0003J\t\u0010O\u001a\u00020\rHÆ\u0003J\t\u0010P\u001a\u00020\u000fHÆ\u0003J\t\u0010Q\u001a\u00020\u0011HÆ\u0003J¿\u0001\u0010R\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\u000b\u001a\u00020\t2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\t2\b\b\u0002\u0010\u0013\u001a\u00020\t2\b\b\u0002\u0010\u0014\u001a\u00020\u000f2\b\b\u0002\u0010\u0015\u001a\u00020\u000f2\b\b\u0002\u0010\u0016\u001a\u00020\t2\b\b\u0002\u0010\u0017\u001a\u00020\u000f2\u000e\b\u0002\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00030\u00192\u000e\b\u0002\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00070\u0019HÆ\u0001J\u0013\u0010S\u001a\u00020.2\b\u0010T\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\n\u0010U\u001a\u0004\u0018\u00010VH\u0002J\t\u0010W\u001a\u00020\u000fHÖ\u0001J\t\u0010X\u001a\u00020\u0003HÖ\u0001J\u0006\u0010Y\u001a\u00020ZR\u001e\u0010\u0012\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001e\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u0016\u0010\f\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u0016\u0010\u000b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u001dR\u0016\u0010\u0015\u001a\u00020\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010*R\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\u001dR\u0016\u0010\n\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\u001dR\u0011\u0010-\u001a\u00020.8F¢\u0006\u0006\u001a\u0004\b-\u0010/R\u0011\u00100\u001a\u00020.8F¢\u0006\u0006\u001a\u0004\b0\u0010/R\u001e\u0010\u0013\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u001d\"\u0004\b2\u0010\u001fR\u0016\u0010\u0016\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b3\u0010\u001dR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b4\u00105R\u001e\u0010\u0014\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u0010(\"\u0004\b7\u00108R\u001c\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00070\u00198\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b9\u0010:R\u0016\u0010\u000e\u001a\u00020\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b;\u0010(R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b<\u0010=R\u0016\u0010\u0017\u001a\u00020\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b>\u0010(R\u001c\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00030\u00198\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b?\u0010:¨\u0006["}, d2 = {"Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;", "", "id", "", "state", "Landroidx/work/WorkInfo$State;", "output", "Landroidx/work/Data;", "initialDelay", "", "intervalDuration", "flexDuration", "constraints", "Landroidx/work/Constraints;", "runAttemptCount", "", "backoffPolicy", "Landroidx/work/BackoffPolicy;", "backoffDelayDuration", "lastEnqueueTime", "periodCount", "generation", "nextScheduleTimeOverride", "stopReason", bn.f11199l, "", "progress", "(Ljava/lang/String;Landroidx/work/WorkInfo$State;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJIIJILjava/util/List;Ljava/util/List;)V", "getBackoffDelayDuration", "()J", "setBackoffDelayDuration", "(J)V", "getBackoffPolicy", "()Landroidx/work/BackoffPolicy;", "setBackoffPolicy", "(Landroidx/work/BackoffPolicy;)V", "getConstraints", "()Landroidx/work/Constraints;", "getFlexDuration", "getGeneration", "()I", "getId", "()Ljava/lang/String;", "getInitialDelay", "getIntervalDuration", "isBackedOff", "", "()Z", "isPeriodic", "getLastEnqueueTime", "setLastEnqueueTime", "getNextScheduleTimeOverride", "getOutput", "()Landroidx/work/Data;", "getPeriodCount", "setPeriodCount", "(I)V", "getProgress", "()Ljava/util/List;", "getRunAttemptCount", "getState", "()Landroidx/work/WorkInfo$State;", "getStopReason", "getTags", "calculateNextRunTimeMillis", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "getPeriodicityOrNull", "Landroidx/work/WorkInfo$PeriodicityInfo;", "hashCode", "toString", "toWorkInfo", "Landroidx/work/WorkInfo;", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final /* data */ class WorkInfoPojo {

        @ColumnInfo(name = "backoff_delay_duration")
        private long backoffDelayDuration;

        @ColumnInfo(name = "backoff_policy")
        @NotNull
        private BackoffPolicy backoffPolicy;

        @Embedded
        @NotNull
        private final Constraints constraints;

        @ColumnInfo(name = "flex_duration")
        private final long flexDuration;

        @ColumnInfo(name = "generation")
        private final int generation;

        @ColumnInfo(name = "id")
        @NotNull
        private final String id;

        @ColumnInfo(name = "initial_delay")
        private final long initialDelay;

        @ColumnInfo(name = "interval_duration")
        private final long intervalDuration;

        @ColumnInfo(name = "last_enqueue_time")
        private long lastEnqueueTime;

        @ColumnInfo(name = "next_schedule_time_override")
        private final long nextScheduleTimeOverride;

        @ColumnInfo(name = "output")
        @NotNull
        private final Data output;

        @ColumnInfo(defaultValue = "0", name = "period_count")
        private int periodCount;

        @Relation(entity = WorkProgress.class, entityColumn = "work_spec_id", parentColumn = "id", projection = {"progress"})
        @NotNull
        private final List<Data> progress;

        @ColumnInfo(name = "run_attempt_count")
        private final int runAttemptCount;

        @ColumnInfo(name = "state")
        @NotNull
        private final WorkInfo.State state;

        @ColumnInfo(name = "stop_reason")
        private final int stopReason;

        @Relation(entity = WorkTag.class, entityColumn = "work_spec_id", parentColumn = "id", projection = {"tag"})
        @NotNull
        private final List<String> tags;

        public WorkInfoPojo(@NotNull String id, @NotNull WorkInfo.State state, @NotNull Data output, long j2, long j3, long j4, @NotNull Constraints constraints, int i2, @NotNull BackoffPolicy backoffPolicy, long j5, long j6, int i3, int i4, long j7, int i5, @NotNull List<String> tags, @NotNull List<Data> progress) {
            j.e(id, "id");
            j.e(state, "state");
            j.e(output, "output");
            j.e(constraints, "constraints");
            j.e(backoffPolicy, "backoffPolicy");
            j.e(tags, "tags");
            j.e(progress, "progress");
            this.id = id;
            this.state = state;
            this.output = output;
            this.initialDelay = j2;
            this.intervalDuration = j3;
            this.flexDuration = j4;
            this.constraints = constraints;
            this.runAttemptCount = i2;
            this.backoffPolicy = backoffPolicy;
            this.backoffDelayDuration = j5;
            this.lastEnqueueTime = j6;
            this.periodCount = i3;
            this.generation = i4;
            this.nextScheduleTimeOverride = j7;
            this.stopReason = i5;
            this.tags = tags;
            this.progress = progress;
        }

        private final long calculateNextRunTimeMillis() {
            return this.state == WorkInfo.State.ENQUEUED ? WorkSpec.INSTANCE.calculateNextRunTime(isBackedOff(), this.runAttemptCount, this.backoffPolicy, this.backoffDelayDuration, this.lastEnqueueTime, this.periodCount, isPeriodic(), this.initialDelay, this.flexDuration, this.intervalDuration, this.nextScheduleTimeOverride) : LocationRequestCompat.PASSIVE_INTERVAL;
        }

        public static /* synthetic */ WorkInfoPojo copy$default(WorkInfoPojo workInfoPojo, String str, WorkInfo.State state, Data data, long j2, long j3, long j4, Constraints constraints, int i2, BackoffPolicy backoffPolicy, long j5, long j6, int i3, int i4, long j7, int i5, List list, List list2, int i6, Object obj) {
            String str2 = (i6 & 1) != 0 ? workInfoPojo.id : str;
            WorkInfo.State state2 = (i6 & 2) != 0 ? workInfoPojo.state : state;
            return workInfoPojo.copy(str2, state2, (i6 & 4) != 0 ? workInfoPojo.output : data, (i6 & 8) != 0 ? workInfoPojo.initialDelay : j2, (i6 & 16) != 0 ? workInfoPojo.intervalDuration : j3, (i6 & 32) != 0 ? workInfoPojo.flexDuration : j4, (i6 & 64) != 0 ? workInfoPojo.constraints : constraints, (i6 & 128) != 0 ? workInfoPojo.runAttemptCount : i2, (i6 & 256) != 0 ? workInfoPojo.backoffPolicy : backoffPolicy, (i6 & 512) != 0 ? workInfoPojo.backoffDelayDuration : j5, (i6 & 1024) != 0 ? workInfoPojo.lastEnqueueTime : j6, (i6 & 2048) != 0 ? workInfoPojo.periodCount : i3, (i6 & 4096) != 0 ? workInfoPojo.generation : i4, (i6 & 8192) != 0 ? workInfoPojo.nextScheduleTimeOverride : j7, (i6 & 16384) != 0 ? workInfoPojo.stopReason : i5, (32768 & i6) != 0 ? workInfoPojo.tags : list, (i6 & 65536) != 0 ? workInfoPojo.progress : list2);
        }

        private final WorkInfo.PeriodicityInfo getPeriodicityOrNull() {
            long j2 = this.intervalDuration;
            if (j2 != 0) {
                return new WorkInfo.PeriodicityInfo(j2, this.flexDuration);
            }
            return null;
        }

        @NotNull
        /* renamed from: component1, reason: from getter */
        public final String getId() {
            return this.id;
        }

        /* renamed from: component10, reason: from getter */
        public final long getBackoffDelayDuration() {
            return this.backoffDelayDuration;
        }

        /* renamed from: component11, reason: from getter */
        public final long getLastEnqueueTime() {
            return this.lastEnqueueTime;
        }

        /* renamed from: component12, reason: from getter */
        public final int getPeriodCount() {
            return this.periodCount;
        }

        /* renamed from: component13, reason: from getter */
        public final int getGeneration() {
            return this.generation;
        }

        /* renamed from: component14, reason: from getter */
        public final long getNextScheduleTimeOverride() {
            return this.nextScheduleTimeOverride;
        }

        /* renamed from: component15, reason: from getter */
        public final int getStopReason() {
            return this.stopReason;
        }

        @NotNull
        public final List<String> component16() {
            return this.tags;
        }

        @NotNull
        public final List<Data> component17() {
            return this.progress;
        }

        @NotNull
        /* renamed from: component2, reason: from getter */
        public final WorkInfo.State getState() {
            return this.state;
        }

        @NotNull
        /* renamed from: component3, reason: from getter */
        public final Data getOutput() {
            return this.output;
        }

        /* renamed from: component4, reason: from getter */
        public final long getInitialDelay() {
            return this.initialDelay;
        }

        /* renamed from: component5, reason: from getter */
        public final long getIntervalDuration() {
            return this.intervalDuration;
        }

        /* renamed from: component6, reason: from getter */
        public final long getFlexDuration() {
            return this.flexDuration;
        }

        @NotNull
        /* renamed from: component7, reason: from getter */
        public final Constraints getConstraints() {
            return this.constraints;
        }

        /* renamed from: component8, reason: from getter */
        public final int getRunAttemptCount() {
            return this.runAttemptCount;
        }

        @NotNull
        /* renamed from: component9, reason: from getter */
        public final BackoffPolicy getBackoffPolicy() {
            return this.backoffPolicy;
        }

        @NotNull
        public final WorkInfoPojo copy(@NotNull String id, @NotNull WorkInfo.State state, @NotNull Data output, long initialDelay, long intervalDuration, long flexDuration, @NotNull Constraints constraints, int runAttemptCount, @NotNull BackoffPolicy backoffPolicy, long backoffDelayDuration, long lastEnqueueTime, int periodCount, int generation, long nextScheduleTimeOverride, int stopReason, @NotNull List<String> tags, @NotNull List<Data> progress) {
            j.e(id, "id");
            j.e(state, "state");
            j.e(output, "output");
            j.e(constraints, "constraints");
            j.e(backoffPolicy, "backoffPolicy");
            j.e(tags, "tags");
            j.e(progress, "progress");
            return new WorkInfoPojo(id, state, output, initialDelay, intervalDuration, flexDuration, constraints, runAttemptCount, backoffPolicy, backoffDelayDuration, lastEnqueueTime, periodCount, generation, nextScheduleTimeOverride, stopReason, tags, progress);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof WorkInfoPojo)) {
                return false;
            }
            WorkInfoPojo workInfoPojo = (WorkInfoPojo) other;
            return j.a(this.id, workInfoPojo.id) && this.state == workInfoPojo.state && j.a(this.output, workInfoPojo.output) && this.initialDelay == workInfoPojo.initialDelay && this.intervalDuration == workInfoPojo.intervalDuration && this.flexDuration == workInfoPojo.flexDuration && j.a(this.constraints, workInfoPojo.constraints) && this.runAttemptCount == workInfoPojo.runAttemptCount && this.backoffPolicy == workInfoPojo.backoffPolicy && this.backoffDelayDuration == workInfoPojo.backoffDelayDuration && this.lastEnqueueTime == workInfoPojo.lastEnqueueTime && this.periodCount == workInfoPojo.periodCount && this.generation == workInfoPojo.generation && this.nextScheduleTimeOverride == workInfoPojo.nextScheduleTimeOverride && this.stopReason == workInfoPojo.stopReason && j.a(this.tags, workInfoPojo.tags) && j.a(this.progress, workInfoPojo.progress);
        }

        public final long getBackoffDelayDuration() {
            return this.backoffDelayDuration;
        }

        @NotNull
        public final BackoffPolicy getBackoffPolicy() {
            return this.backoffPolicy;
        }

        @NotNull
        public final Constraints getConstraints() {
            return this.constraints;
        }

        public final long getFlexDuration() {
            return this.flexDuration;
        }

        public final int getGeneration() {
            return this.generation;
        }

        @NotNull
        public final String getId() {
            return this.id;
        }

        public final long getInitialDelay() {
            return this.initialDelay;
        }

        public final long getIntervalDuration() {
            return this.intervalDuration;
        }

        public final long getLastEnqueueTime() {
            return this.lastEnqueueTime;
        }

        public final long getNextScheduleTimeOverride() {
            return this.nextScheduleTimeOverride;
        }

        @NotNull
        public final Data getOutput() {
            return this.output;
        }

        public final int getPeriodCount() {
            return this.periodCount;
        }

        @NotNull
        public final List<Data> getProgress() {
            return this.progress;
        }

        public final int getRunAttemptCount() {
            return this.runAttemptCount;
        }

        @NotNull
        public final WorkInfo.State getState() {
            return this.state;
        }

        public final int getStopReason() {
            return this.stopReason;
        }

        @NotNull
        public final List<String> getTags() {
            return this.tags;
        }

        public int hashCode() {
            return (((((((((((((((((((((((((((((((this.id.hashCode() * 31) + this.state.hashCode()) * 31) + this.output.hashCode()) * 31) + Long.hashCode(this.initialDelay)) * 31) + Long.hashCode(this.intervalDuration)) * 31) + Long.hashCode(this.flexDuration)) * 31) + this.constraints.hashCode()) * 31) + Integer.hashCode(this.runAttemptCount)) * 31) + this.backoffPolicy.hashCode()) * 31) + Long.hashCode(this.backoffDelayDuration)) * 31) + Long.hashCode(this.lastEnqueueTime)) * 31) + Integer.hashCode(this.periodCount)) * 31) + Integer.hashCode(this.generation)) * 31) + Long.hashCode(this.nextScheduleTimeOverride)) * 31) + Integer.hashCode(this.stopReason)) * 31) + this.tags.hashCode()) * 31) + this.progress.hashCode();
        }

        public final boolean isBackedOff() {
            return this.state == WorkInfo.State.ENQUEUED && this.runAttemptCount > 0;
        }

        public final boolean isPeriodic() {
            return this.intervalDuration != 0;
        }

        public final void setBackoffDelayDuration(long j2) {
            this.backoffDelayDuration = j2;
        }

        public final void setBackoffPolicy(@NotNull BackoffPolicy backoffPolicy) {
            j.e(backoffPolicy, "<set-?>");
            this.backoffPolicy = backoffPolicy;
        }

        public final void setLastEnqueueTime(long j2) {
            this.lastEnqueueTime = j2;
        }

        public final void setPeriodCount(int i2) {
            this.periodCount = i2;
        }

        @NotNull
        public String toString() {
            return "WorkInfoPojo(id=" + this.id + ", state=" + this.state + ", output=" + this.output + ", initialDelay=" + this.initialDelay + ", intervalDuration=" + this.intervalDuration + ", flexDuration=" + this.flexDuration + ", constraints=" + this.constraints + ", runAttemptCount=" + this.runAttemptCount + ", backoffPolicy=" + this.backoffPolicy + ", backoffDelayDuration=" + this.backoffDelayDuration + ", lastEnqueueTime=" + this.lastEnqueueTime + ", periodCount=" + this.periodCount + ", generation=" + this.generation + ", nextScheduleTimeOverride=" + this.nextScheduleTimeOverride + ", stopReason=" + this.stopReason + ", tags=" + this.tags + ", progress=" + this.progress + ')';
        }

        @NotNull
        public final WorkInfo toWorkInfo() {
            Data progress = !this.progress.isEmpty() ? this.progress.get(0) : Data.EMPTY;
            UUID uuidFromString = UUID.fromString(this.id);
            j.d(uuidFromString, "fromString(id)");
            WorkInfo.State state = this.state;
            HashSet hashSet = new HashSet(this.tags);
            Data data = this.output;
            j.d(progress, "progress");
            return new WorkInfo(uuidFromString, state, hashSet, data, progress, this.runAttemptCount, this.generation, this.constraints, this.initialDelay, getPeriodicityOrNull(), calculateNextRunTimeMillis(), this.stopReason);
        }

        public /* synthetic */ WorkInfoPojo(String str, WorkInfo.State state, Data data, long j2, long j3, long j4, Constraints constraints, int i2, BackoffPolicy backoffPolicy, long j5, long j6, int i3, int i4, long j7, int i5, List list, List list2, int i6, f fVar) {
            this(str, state, data, (i6 & 8) != 0 ? 0L : j2, (i6 & 16) != 0 ? 0L : j3, (i6 & 32) != 0 ? 0L : j4, constraints, i2, (i6 & 256) != 0 ? BackoffPolicy.EXPONENTIAL : backoffPolicy, (i6 & 512) != 0 ? 30000L : j5, (i6 & 1024) != 0 ? 0L : j6, (i6 & 2048) != 0 ? 0 : i3, i4, j7, i5, list, list2);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ WorkSpec(String str, WorkInfo.State state, String str2, String str3, Data data, Data data2, long j2, long j3, long j4, Constraints constraints, int i2, BackoffPolicy backoffPolicy, long j5, long j6, long j7, long j8, boolean z2, OutOfQuotaPolicy outOfQuotaPolicy, int i3, int i4, long j9, int i5, int i6, int i7, f fVar) {
        String str4;
        Data data3;
        Data data4;
        WorkInfo.State state2 = (i7 & 2) != 0 ? WorkInfo.State.ENQUEUED : state;
        if ((i7 & 8) != 0) {
            String name = OverwritingInputMerger.class.getName();
            j.d(name, "OverwritingInputMerger::class.java.name");
            str4 = name;
        } else {
            str4 = str3;
        }
        if ((i7 & 16) != 0) {
            Data EMPTY = Data.EMPTY;
            j.d(EMPTY, "EMPTY");
            data3 = EMPTY;
        } else {
            data3 = data;
        }
        if ((i7 & 32) != 0) {
            Data EMPTY2 = Data.EMPTY;
            j.d(EMPTY2, "EMPTY");
            data4 = EMPTY2;
        } else {
            data4 = data2;
        }
        this(str, state2, str2, str4, data3, data4, (i7 & 64) != 0 ? 0L : j2, (i7 & 128) != 0 ? 0L : j3, (i7 & 256) != 0 ? 0L : j4, (i7 & 512) != 0 ? Constraints.NONE : constraints, (i7 & 1024) != 0 ? 0 : i2, (i7 & 2048) != 0 ? BackoffPolicy.EXPONENTIAL : backoffPolicy, (i7 & 4096) != 0 ? WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS : j5, (i7 & 8192) != 0 ? -1L : j6, (i7 & 16384) == 0 ? j7 : 0L, (32768 & i7) != 0 ? -1L : j8, (65536 & i7) != 0 ? false : z2, (131072 & i7) != 0 ? OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST : outOfQuotaPolicy, (262144 & i7) != 0 ? 0 : i3, (524288 & i7) != 0 ? 0 : i4, (1048576 & i7) != 0 ? Long.MAX_VALUE : j9, (2097152 & i7) != 0 ? 0 : i5, (i7 & 4194304) != 0 ? -256 : i6);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkSpec(@NotNull String id, @NotNull String workerClassName_) {
        this(id, null, workerClassName_, null, null, null, 0L, 0L, 0L, null, 0, null, 0L, 0L, 0L, 0L, false, null, 0, 0, 0L, 0, 0, 8388602, null);
        j.e(id, "id");
        j.e(workerClassName_, "workerClassName_");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkSpec(@NotNull String newId, @NotNull WorkSpec other) {
        this(newId, other.state, other.workerClassName, other.inputMergerClassName, new Data(other.input), new Data(other.output), other.initialDelay, other.intervalDuration, other.flexDuration, new Constraints(other.constraints), other.runAttemptCount, other.backoffPolicy, other.backoffDelayDuration, other.lastEnqueueTime, other.minimumRetentionDuration, other.scheduleRequestedAt, other.expedited, other.outOfQuotaPolicy, other.periodCount, 0, other.nextScheduleTimeOverride, other.nextScheduleTimeOverrideGeneration, other.stopReason, 524288, null);
        j.e(newId, "newId");
        j.e(other, "other");
    }
}
