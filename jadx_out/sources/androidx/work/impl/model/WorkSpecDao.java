package androidx.work.impl.model;

import android.annotation.SuppressLint;
import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Transaction;
import androidx.room.Update;
import androidx.view.LiveData;
import androidx.work.Data;
import androidx.work.WorkInfo;
import androidx.work.impl.model.WorkSpec;
import com.umeng.analytics.AnalyticsConfig;
import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.flow.InterfaceC1639c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Dao
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u001b\bg\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H'¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\u000b\u001a\u0004\u0018\u00010\u00022\u0006\u0010\b\u001a\u00020\u0007H'¢\u0006\u0004\b\u000b\u0010\fJ\u001d\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\r\u001a\u00020\u0007H'¢\u0006\u0004\b\u0010\u0010\u0011J\u0015\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00070\u000eH'¢\u0006\u0004\b\u0012\u0010\u0013J\u001b\u0010\u0015\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u000e0\u0014H'¢\u0006\u0004\b\u0015\u0010\u0016J\u001f\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\b\u001a\u00020\u0007H'¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001c\u001a\u00020\u00192\u0006\u0010\b\u001a\u00020\u0007H'¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u001e\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H'¢\u0006\u0004\b\u001e\u0010\nJ\u001f\u0010!\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u001fH'¢\u0006\u0004\b!\u0010\"J\u001f\u0010%\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010$\u001a\u00020#H'¢\u0006\u0004\b%\u0010&J\u0017\u0010'\u001a\u00020\u00192\u0006\u0010\b\u001a\u00020\u0007H'¢\u0006\u0004\b'\u0010\u001dJ\u0017\u0010(\u001a\u00020\u00192\u0006\u0010\b\u001a\u00020\u0007H'¢\u0006\u0004\b(\u0010\u001dJ\u001f\u0010*\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010)\u001a\u00020#H'¢\u0006\u0004\b*\u0010&J\u001f\u0010,\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010+\u001a\u00020\u0019H'¢\u0006\u0004\b,\u0010-J\u0019\u0010.\u001a\u0004\u0018\u00010\u00172\u0006\u0010\b\u001a\u00020\u0007H'¢\u0006\u0004\b.\u0010/J\u0019\u00101\u001a\u0004\u0018\u0001002\u0006\u0010\b\u001a\u00020\u0007H'¢\u0006\u0004\b1\u00102J#\u00104\u001a\b\u0012\u0004\u0012\u0002000\u000e2\f\u00103\u001a\b\u0012\u0004\u0012\u00020\u00070\u000eH'¢\u0006\u0004\b4\u00105J)\u00106\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002000\u000e0\u00142\f\u00103\u001a\b\u0012\u0004\u0012\u00020\u00070\u000eH'¢\u0006\u0004\b6\u00107J)\u00109\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002000\u000e082\f\u00103\u001a\b\u0012\u0004\u0012\u00020\u00070\u000eH'¢\u0006\u0004\b9\u0010:J\u001d\u0010<\u001a\b\u0012\u0004\u0012\u0002000\u000e2\u0006\u0010;\u001a\u00020\u0007H'¢\u0006\u0004\b<\u0010\u0011J#\u0010=\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002000\u000e082\u0006\u0010;\u001a\u00020\u0007H'¢\u0006\u0004\b=\u0010>J#\u0010?\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002000\u000e0\u00142\u0006\u0010;\u001a\u00020\u0007H'¢\u0006\u0004\b?\u0010@J\u001d\u0010A\u001a\b\u0012\u0004\u0012\u0002000\u000e2\u0006\u0010\r\u001a\u00020\u0007H'¢\u0006\u0004\bA\u0010\u0011J#\u0010B\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002000\u000e0\u00142\u0006\u0010\r\u001a\u00020\u0007H'¢\u0006\u0004\bB\u0010@J#\u0010C\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002000\u000e082\u0006\u0010\r\u001a\u00020\u0007H'¢\u0006\u0004\bC\u0010>J\u001d\u0010D\u001a\b\u0012\u0004\u0012\u00020\u001f0\u000e2\u0006\u0010\b\u001a\u00020\u0007H'¢\u0006\u0004\bD\u0010\u0011J\u001d\u0010E\u001a\b\u0012\u0004\u0012\u00020\u00070\u000e2\u0006\u0010;\u001a\u00020\u0007H'¢\u0006\u0004\bE\u0010\u0011J\u001d\u0010F\u001a\b\u0012\u0004\u0012\u00020\u00070\u000e2\u0006\u0010\r\u001a\u00020\u0007H'¢\u0006\u0004\bF\u0010\u0011J\u0015\u0010G\u001a\b\u0012\u0004\u0012\u00020\u00070\u000eH'¢\u0006\u0004\bG\u0010\u0013J\u000f\u0010I\u001a\u00020HH'¢\u0006\u0004\bI\u0010JJ\u001f\u0010L\u001a\u00020\u00192\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010K\u001a\u00020#H'¢\u0006\u0004\bL\u0010MJ\u001d\u0010N\u001a\b\u0012\u0004\u0012\u00020#0\u00142\u0006\u0010\b\u001a\u00020\u0007H'¢\u0006\u0004\bN\u0010@J\u000f\u0010O\u001a\u00020\u0019H'¢\u0006\u0004\bO\u0010PJ\u001d\u0010R\u001a\b\u0012\u0004\u0012\u00020\u00020\u000e2\u0006\u0010Q\u001a\u00020\u0019H'¢\u0006\u0004\bR\u0010SJ\u0015\u0010T\u001a\b\u0012\u0004\u0012\u00020\u00020\u000eH'¢\u0006\u0004\bT\u0010\u0013J\u001d\u0010V\u001a\b\u0012\u0004\u0012\u00020\u00020\u000e2\u0006\u0010U\u001a\u00020\u0019H'¢\u0006\u0004\bV\u0010SJ\u0015\u0010W\u001a\b\u0012\u0004\u0012\u00020\u00020\u000eH'¢\u0006\u0004\bW\u0010\u0013J\u0015\u0010X\u001a\b\u0012\u0004\u0012\u00020\u00020\u000eH'¢\u0006\u0004\bX\u0010\u0013J\u001d\u0010Z\u001a\b\u0012\u0004\u0012\u00020\u00020\u000e2\u0006\u0010Y\u001a\u00020#H'¢\u0006\u0004\bZ\u0010[J\u000f\u0010\\\u001a\u00020\u0004H'¢\u0006\u0004\b\\\u0010]J\u0017\u0010^\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H'¢\u0006\u0004\b^\u0010\nJ\u0017\u0010_\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b_\u0010\u0006J\u000f\u0010`\u001a\u00020\u0019H'¢\u0006\u0004\b`\u0010PJ\u001f\u0010b\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010a\u001a\u00020\u0019H'¢\u0006\u0004\bb\u0010-ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006cÀ\u0006\u0001"}, d2 = {"Landroidx/work/impl/model/WorkSpecDao;", "", "Landroidx/work/impl/model/WorkSpec;", "workSpec", "Lkotlin/j;", "insertWorkSpec", "(Landroidx/work/impl/model/WorkSpec;)V", "", "id", "delete", "(Ljava/lang/String;)V", "getWorkSpec", "(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;", "name", "", "Landroidx/work/impl/model/WorkSpec$IdAndState;", "getWorkSpecIdAndStatesForName", "(Ljava/lang/String;)Ljava/util/List;", "getAllWorkSpecIds", "()Ljava/util/List;", "Landroidx/lifecycle/LiveData;", "getAllWorkSpecIdsLiveData", "()Landroidx/lifecycle/LiveData;", "Landroidx/work/WorkInfo$State;", "state", "", "setState", "(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I", "setCancelledState", "(Ljava/lang/String;)I", "incrementPeriodCount", "Landroidx/work/Data;", "output", "setOutput", "(Ljava/lang/String;Landroidx/work/Data;)V", "", "enqueueTime", "setLastEnqueueTime", "(Ljava/lang/String;J)V", "incrementWorkSpecRunAttemptCount", "resetWorkSpecRunAttemptCount", "nextScheduleTimeOverrideMillis", "setNextScheduleTimeOverride", "overrideGeneration", "resetWorkSpecNextScheduleTimeOverride", "(Ljava/lang/String;I)V", "getState", "(Ljava/lang/String;)Landroidx/work/WorkInfo$State;", "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;", "getWorkStatusPojoForId", "(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;", "ids", "getWorkStatusPojoForIds", "(Ljava/util/List;)Ljava/util/List;", "getWorkStatusPojoLiveDataForIds", "(Ljava/util/List;)Landroidx/lifecycle/LiveData;", "Lkotlinx/coroutines/flow/c;", "getWorkStatusPojoFlowDataForIds", "(Ljava/util/List;)Lkotlinx/coroutines/flow/c;", "tag", "getWorkStatusPojoForTag", "getWorkStatusPojoFlowForTag", "(Ljava/lang/String;)Lkotlinx/coroutines/flow/c;", "getWorkStatusPojoLiveDataForTag", "(Ljava/lang/String;)Landroidx/lifecycle/LiveData;", "getWorkStatusPojoForName", "getWorkStatusPojoLiveDataForName", "getWorkStatusPojoFlowForName", "getInputsFromPrerequisites", "getUnfinishedWorkWithTag", "getUnfinishedWorkWithName", "getAllUnfinishedWork", "", "hasUnfinishedWork", "()Z", AnalyticsConfig.RTD_START_TIME, "markWorkSpecScheduled", "(Ljava/lang/String;J)I", "getScheduleRequestedAtLiveData", "resetScheduledState", "()I", "schedulerLimit", "getEligibleWorkForScheduling", "(I)Ljava/util/List;", "getEligibleWorkForSchedulingWithContentUris", "maxLimit", "getAllEligibleWorkSpecsForScheduling", "getScheduledWork", "getRunningWork", "startingAt", "getRecentlyCompletedWork", "(J)Ljava/util/List;", "pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast", "()V", "incrementGeneration", "updateWorkSpec", "countNonFinishedContentUriTriggerWorkers", "stopReason", "setStopReason", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SuppressLint({"UnknownNullness"})
/* loaded from: classes.dex */
public interface WorkSpecDao {
    @Query("Select COUNT(*) FROM workspec WHERE LENGTH(content_uri_triggers)<>0 AND state NOT IN (2, 3, 5)")
    int countNonFinishedContentUriTriggerWorkers();

    @Query("DELETE FROM workspec WHERE id=:id")
    void delete(@NotNull String id);

    @Query("SELECT * FROM workspec WHERE state=0 ORDER BY last_enqueue_time LIMIT :maxLimit")
    @NotNull
    List<WorkSpec> getAllEligibleWorkSpecsForScheduling(int maxLimit);

    @Query("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)")
    @NotNull
    List<String> getAllUnfinishedWork();

    @Query("SELECT id FROM workspec")
    @NotNull
    List<String> getAllWorkSpecIds();

    @Query("SELECT id FROM workspec")
    @Transaction
    @NotNull
    LiveData<List<String>> getAllWorkSpecIdsLiveData();

    @Query("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(:schedulerLimit-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND LENGTH(content_uri_triggers)=0 AND state NOT IN (2, 3, 5))")
    @NotNull
    List<WorkSpec> getEligibleWorkForScheduling(int schedulerLimit);

    @Query("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 AND LENGTH(content_uri_triggers)<>0 ORDER BY last_enqueue_time")
    @NotNull
    List<WorkSpec> getEligibleWorkForSchedulingWithContentUris();

    @Query("SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=:id)")
    @NotNull
    List<Data> getInputsFromPrerequisites(@NotNull String id);

    @Query("SELECT * FROM workspec WHERE last_enqueue_time >= :startingAt AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC")
    @NotNull
    List<WorkSpec> getRecentlyCompletedWork(long startingAt);

    @Query("SELECT * FROM workspec WHERE state=1")
    @NotNull
    List<WorkSpec> getRunningWork();

    @Query("SELECT schedule_requested_at FROM workspec WHERE id=:id")
    @NotNull
    LiveData<Long> getScheduleRequestedAtLiveData(@NotNull String id);

    @Query("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1")
    @NotNull
    List<WorkSpec> getScheduledWork();

    @Query("SELECT state FROM workspec WHERE id=:id")
    @Nullable
    WorkInfo.State getState(@NotNull String id);

    @Query("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=:name)")
    @NotNull
    List<String> getUnfinishedWorkWithName(@NotNull String name);

    @Query("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=:tag)")
    @NotNull
    List<String> getUnfinishedWorkWithTag(@NotNull String tag);

    @Query("SELECT * FROM workspec WHERE id=:id")
    @Nullable
    WorkSpec getWorkSpec(@NotNull String id);

    @Query("SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=:name)")
    @NotNull
    List<WorkSpec.IdAndState> getWorkSpecIdAndStatesForName(@NotNull String name);

    @Query("SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (:ids)")
    @Transaction
    @NotNull
    InterfaceC1639c getWorkStatusPojoFlowDataForIds(@NotNull List<String> ids);

    @Query("SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=:name)")
    @Transaction
    @NotNull
    InterfaceC1639c getWorkStatusPojoFlowForName(@NotNull String name);

    @Query("SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN\n            (SELECT work_spec_id FROM worktag WHERE tag=:tag)")
    @Transaction
    @NotNull
    InterfaceC1639c getWorkStatusPojoFlowForTag(@NotNull String tag);

    @Query("SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id=:id")
    @Transaction
    @Nullable
    WorkSpec.WorkInfoPojo getWorkStatusPojoForId(@NotNull String id);

    @Query("SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (:ids)")
    @Transaction
    @NotNull
    List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForIds(@NotNull List<String> ids);

    @Query("SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=:name)")
    @Transaction
    @NotNull
    List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForName(@NotNull String name);

    @Query("SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN\n            (SELECT work_spec_id FROM worktag WHERE tag=:tag)")
    @Transaction
    @NotNull
    List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForTag(@NotNull String tag);

    @Query("SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (:ids)")
    @Transaction
    @NotNull
    LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForIds(@NotNull List<String> ids);

    @Query("SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=:name)")
    @Transaction
    @NotNull
    LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForName(@NotNull String name);

    @Query("SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN\n            (SELECT work_spec_id FROM worktag WHERE tag=:tag)")
    @Transaction
    @NotNull
    LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForTag(@NotNull String tag);

    @Query("SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1")
    boolean hasUnfinishedWork();

    @Query("UPDATE workspec SET generation=generation+1 WHERE id=:id")
    void incrementGeneration(@NotNull String id);

    @Query("UPDATE workspec SET period_count=period_count+1 WHERE id=:id")
    void incrementPeriodCount(@NotNull String id);

    @Query("UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=:id")
    int incrementWorkSpecRunAttemptCount(@NotNull String id);

    @Insert(onConflict = 5)
    void insertWorkSpec(@NotNull WorkSpec workSpec);

    @Query("UPDATE workspec SET schedule_requested_at=:startTime WHERE id=:id")
    int markWorkSpecScheduled(@NotNull String id, long startTime);

    @Query("DELETE FROM workspec WHERE state IN (2, 3, 5) AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))")
    void pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast();

    @Query("UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)")
    int resetScheduledState();

    @Query("UPDATE workspec SET next_schedule_time_override=9223372036854775807 WHERE (id=:id AND next_schedule_time_override_generation=:overrideGeneration)")
    void resetWorkSpecNextScheduleTimeOverride(@NotNull String id, int overrideGeneration);

    @Query("UPDATE workspec SET run_attempt_count=0 WHERE id=:id")
    int resetWorkSpecRunAttemptCount(@NotNull String id);

    @Query("UPDATE workspec SET stop_reason = CASE WHEN state=1 THEN 1 ELSE -256 END, state=5 WHERE id=:id")
    int setCancelledState(@NotNull String id);

    @Query("UPDATE workspec SET last_enqueue_time=:enqueueTime WHERE id=:id")
    void setLastEnqueueTime(@NotNull String id, long enqueueTime);

    @Query("UPDATE workspec SET next_schedule_time_override=:nextScheduleTimeOverrideMillis WHERE id=:id")
    void setNextScheduleTimeOverride(@NotNull String id, long nextScheduleTimeOverrideMillis);

    @Query("UPDATE workspec SET output=:output WHERE id=:id")
    void setOutput(@NotNull String id, @NotNull Data output);

    @Query("UPDATE workspec SET state=:state WHERE id=:id")
    int setState(@NotNull WorkInfo.State state, @NotNull String id);

    @Query("UPDATE workspec SET stop_reason=:stopReason WHERE id=:id")
    void setStopReason(@NotNull String id, int stopReason);

    @Update
    void updateWorkSpec(@NotNull WorkSpec workSpec);
}
