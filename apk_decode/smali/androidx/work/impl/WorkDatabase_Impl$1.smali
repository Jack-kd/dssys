.class Landroidx/work/impl/WorkDatabase_Impl$1;
.super Landroidx/room/RoomOpenHelper$Delegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/WorkDatabase_Impl;->createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/WorkDatabase_Impl;


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkDatabase_Impl;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/work/impl/WorkDatabase_Impl;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/room/RoomOpenHelper$Delegate;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public createAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    .line 1
    const-string v0, "CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)"

    .line 7
    .line 8
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)"

    .line 12
    .line 13
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT NOT NULL, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `last_enqueue_time` INTEGER NOT NULL DEFAULT -1, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `period_count` INTEGER NOT NULL DEFAULT 0, `generation` INTEGER NOT NULL DEFAULT 0, `next_schedule_time_override` INTEGER NOT NULL DEFAULT 9223372036854775807, `next_schedule_time_override_generation` INTEGER NOT NULL DEFAULT 0, `stop_reason` INTEGER NOT NULL DEFAULT -256, `required_network_type` INTEGER NOT NULL, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB NOT NULL, PRIMARY KEY(`id`))"

    .line 17
    .line 18
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)"

    .line 22
    .line 23
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_last_enqueue_time` ON `WorkSpec` (`last_enqueue_time`)"

    .line 27
    .line 28
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 32
    .line 33
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)"

    .line 37
    .line 38
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `generation` INTEGER NOT NULL DEFAULT 0, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`, `generation`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 42
    .line 43
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 47
    .line 48
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)"

    .line 52
    .line 53
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 57
    .line 58
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v0, "CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))"

    .line 62
    .line 63
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 67
    .line 68
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'7d73d21f1bd82c9e5268b6dcf9fde2cb\')"

    .line 72
    .line 73
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public dropAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3

    .line 1
    const-string v0, "DROP TABLE IF EXISTS `Dependency`"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "DROP TABLE IF EXISTS `WorkSpec`"

    .line 7
    .line 8
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "DROP TABLE IF EXISTS `WorkTag`"

    .line 12
    .line 13
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "DROP TABLE IF EXISTS `SystemIdInfo`"

    .line 17
    .line 18
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "DROP TABLE IF EXISTS `WorkName`"

    .line 22
    .line 23
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "DROP TABLE IF EXISTS `WorkProgress`"

    .line 27
    .line 28
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "DROP TABLE IF EXISTS `Preference`"

    .line 32
    .line 33
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/work/impl/WorkDatabase_Impl;

    .line 37
    .line 38
    invoke-static {v0}, Landroidx/work/impl/WorkDatabase_Impl;->access$000(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/work/impl/WorkDatabase_Impl;

    .line 45
    .line 46
    invoke-static {v0}, Landroidx/work/impl/WorkDatabase_Impl;->access$100(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const/4 v1, 0x0

    .line 55
    :goto_0
    if-ge v1, v0, :cond_0

    .line 56
    .line 57
    iget-object v2, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/work/impl/WorkDatabase_Impl;

    .line 58
    .line 59
    invoke-static {v2}, Landroidx/work/impl/WorkDatabase_Impl;->access$200(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    .line 68
    .line 69
    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onDestructiveMigration(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 70
    .line 71
    .line 72
    add-int/lit8 v1, v1, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/work/impl/WorkDatabase_Impl;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/impl/WorkDatabase_Impl;->access$300(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/work/impl/WorkDatabase_Impl;

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/work/impl/WorkDatabase_Impl;->access$400(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    if-ge v1, v0, :cond_0

    .line 21
    .line 22
    iget-object v2, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/work/impl/WorkDatabase_Impl;

    .line 23
    .line 24
    invoke-static {v2}, Landroidx/work/impl/WorkDatabase_Impl;->access$500(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    .line 33
    .line 34
    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method public onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/work/impl/WorkDatabase_Impl;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/work/impl/WorkDatabase_Impl;->access$602(Landroidx/work/impl/WorkDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 4
    .line 5
    .line 6
    const-string v0, "PRAGMA foreign_keys = ON"

    .line 7
    .line 8
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/work/impl/WorkDatabase_Impl;

    .line 12
    .line 13
    invoke-static {v0, p1}, Landroidx/work/impl/WorkDatabase_Impl;->access$700(Landroidx/work/impl/WorkDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/work/impl/WorkDatabase_Impl;

    .line 17
    .line 18
    invoke-static {v0}, Landroidx/work/impl/WorkDatabase_Impl;->access$800(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/work/impl/WorkDatabase_Impl;

    .line 25
    .line 26
    invoke-static {v0}, Landroidx/work/impl/WorkDatabase_Impl;->access$900(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v1, 0x0

    .line 35
    :goto_0
    if-ge v1, v0, :cond_0

    .line 36
    .line 37
    iget-object v2, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/work/impl/WorkDatabase_Impl;

    .line 38
    .line 39
    invoke-static {v2}, Landroidx/work/impl/WorkDatabase_Impl;->access$1000(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    .line 48
    .line 49
    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method public onPostMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public onPreMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/room/util/DBUtil;->dropFtsSyncTriggers(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onValidateSchema(Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/room/RoomOpenHelper$ValidationResult;
    .locals 23

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 7
    .line 8
    .line 9
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    .line 10
    .line 11
    const/4 v8, 0x0

    .line 12
    const/4 v9, 0x1

    .line 13
    const-string v4, "work_spec_id"

    .line 14
    .line 15
    const-string v5, "TEXT"

    .line 16
    .line 17
    const/4 v6, 0x1

    .line 18
    const/4 v7, 0x1

    .line 19
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    const-string v4, "work_spec_id"

    .line 23
    .line 24
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    new-instance v5, Landroidx/room/util/TableInfo$Column;

    .line 28
    .line 29
    const/4 v10, 0x0

    .line 30
    const/4 v11, 0x1

    .line 31
    const-string v6, "prerequisite_id"

    .line 32
    .line 33
    const-string v7, "TEXT"

    .line 34
    .line 35
    const/4 v8, 0x1

    .line 36
    const/4 v9, 0x2

    .line 37
    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    const-string v3, "prerequisite_id"

    .line 41
    .line 42
    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    new-instance v5, Ljava/util/HashSet;

    .line 46
    .line 47
    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 48
    .line 49
    .line 50
    new-instance v6, Landroidx/room/util/TableInfo$ForeignKey;

    .line 51
    .line 52
    filled-new-array {v4}, [Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v10

    .line 60
    const-string v12, "id"

    .line 61
    .line 62
    filled-new-array {v12}, [Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v11

    .line 70
    const-string v7, "WorkSpec"

    .line 71
    .line 72
    const-string v8, "CASCADE"

    .line 73
    .line 74
    const-string v9, "CASCADE"

    .line 75
    .line 76
    invoke-direct/range {v6 .. v11}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    new-instance v13, Landroidx/room/util/TableInfo$ForeignKey;

    .line 83
    .line 84
    filled-new-array {v3}, [Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v17

    .line 92
    filled-new-array {v12}, [Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v18

    .line 100
    const-string v14, "WorkSpec"

    .line 101
    .line 102
    const-string v15, "CASCADE"

    .line 103
    .line 104
    const-string v16, "CASCADE"

    .line 105
    .line 106
    invoke-direct/range {v13 .. v18}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    new-instance v6, Ljava/util/HashSet;

    .line 113
    .line 114
    invoke-direct {v6, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 115
    .line 116
    .line 117
    new-instance v7, Landroidx/room/util/TableInfo$Index;

    .line 118
    .line 119
    filled-new-array {v4}, [Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    const-string v9, "ASC"

    .line 128
    .line 129
    filled-new-array {v9}, [Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    const-string v11, "index_Dependency_work_spec_id"

    .line 138
    .line 139
    const/4 v13, 0x0

    .line 140
    invoke-direct {v7, v11, v13, v8, v10}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    new-instance v7, Landroidx/room/util/TableInfo$Index;

    .line 147
    .line 148
    filled-new-array {v3}, [Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    filled-new-array {v9}, [Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    const-string v10, "index_Dependency_prerequisite_id"

    .line 165
    .line 166
    invoke-direct {v7, v10, v13, v3, v8}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    new-instance v3, Landroidx/room/util/TableInfo;

    .line 173
    .line 174
    const-string v7, "Dependency"

    .line 175
    .line 176
    invoke-direct {v3, v7, v1, v5, v6}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 177
    .line 178
    .line 179
    invoke-static {v0, v7}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v3, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    const-string v6, "\n Found:\n"

    .line 188
    .line 189
    if-nez v5, :cond_0

    .line 190
    .line 191
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    .line 192
    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    const-string v4, "Dependency(androidx.work.impl.model.Dependency).\n Expected:\n"

    .line 199
    .line 200
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-direct {v0, v13, v1}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    .line 217
    .line 218
    .line 219
    return-object v0

    .line 220
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 221
    .line 222
    const/16 v3, 0x1e

    .line 223
    .line 224
    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 225
    .line 226
    .line 227
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 228
    .line 229
    const/16 v19, 0x0

    .line 230
    .line 231
    const/16 v20, 0x1

    .line 232
    .line 233
    const/16 v17, 0x1

    .line 234
    .line 235
    const/16 v18, 0x1

    .line 236
    .line 237
    const-string v15, "id"

    .line 238
    .line 239
    const-string v16, "TEXT"

    .line 240
    .line 241
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 248
    .line 249
    const/16 v20, 0x0

    .line 250
    .line 251
    const/16 v21, 0x1

    .line 252
    .line 253
    const/16 v19, 0x0

    .line 254
    .line 255
    const-string v16, "state"

    .line 256
    .line 257
    const-string v17, "INTEGER"

    .line 258
    .line 259
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 260
    .line 261
    .line 262
    const-string v3, "state"

    .line 263
    .line 264
    invoke-virtual {v1, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 268
    .line 269
    const/16 v21, 0x0

    .line 270
    .line 271
    const/16 v22, 0x1

    .line 272
    .line 273
    const/16 v19, 0x1

    .line 274
    .line 275
    const/16 v20, 0x0

    .line 276
    .line 277
    const-string v17, "worker_class_name"

    .line 278
    .line 279
    const-string v18, "TEXT"

    .line 280
    .line 281
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 282
    .line 283
    .line 284
    move-object/from16 v3, v16

    .line 285
    .line 286
    const-string v5, "worker_class_name"

    .line 287
    .line 288
    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 292
    .line 293
    const/16 v19, 0x0

    .line 294
    .line 295
    const/16 v20, 0x1

    .line 296
    .line 297
    const/16 v17, 0x1

    .line 298
    .line 299
    const/16 v18, 0x0

    .line 300
    .line 301
    const-string v15, "input_merger_class_name"

    .line 302
    .line 303
    const-string v16, "TEXT"

    .line 304
    .line 305
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 306
    .line 307
    .line 308
    const-string v3, "input_merger_class_name"

    .line 309
    .line 310
    invoke-virtual {v1, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 314
    .line 315
    const/16 v20, 0x0

    .line 316
    .line 317
    const/16 v21, 0x1

    .line 318
    .line 319
    const/16 v18, 0x1

    .line 320
    .line 321
    const/16 v19, 0x0

    .line 322
    .line 323
    const-string v16, "input"

    .line 324
    .line 325
    const-string v17, "BLOB"

    .line 326
    .line 327
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 328
    .line 329
    .line 330
    const-string v3, "input"

    .line 331
    .line 332
    invoke-virtual {v1, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 336
    .line 337
    const/16 v21, 0x0

    .line 338
    .line 339
    const/16 v19, 0x1

    .line 340
    .line 341
    const/16 v20, 0x0

    .line 342
    .line 343
    const-string v17, "output"

    .line 344
    .line 345
    const-string v18, "BLOB"

    .line 346
    .line 347
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 348
    .line 349
    .line 350
    move-object/from16 v3, v16

    .line 351
    .line 352
    const-string v5, "output"

    .line 353
    .line 354
    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 358
    .line 359
    const/16 v19, 0x0

    .line 360
    .line 361
    const/16 v20, 0x1

    .line 362
    .line 363
    const/16 v17, 0x1

    .line 364
    .line 365
    const/16 v18, 0x0

    .line 366
    .line 367
    const-string v15, "initial_delay"

    .line 368
    .line 369
    const-string v16, "INTEGER"

    .line 370
    .line 371
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 372
    .line 373
    .line 374
    const-string v3, "initial_delay"

    .line 375
    .line 376
    invoke-virtual {v1, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 380
    .line 381
    const/16 v20, 0x0

    .line 382
    .line 383
    const/16 v21, 0x1

    .line 384
    .line 385
    const/16 v18, 0x1

    .line 386
    .line 387
    const/16 v19, 0x0

    .line 388
    .line 389
    const-string v16, "interval_duration"

    .line 390
    .line 391
    const-string v17, "INTEGER"

    .line 392
    .line 393
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 394
    .line 395
    .line 396
    const-string v3, "interval_duration"

    .line 397
    .line 398
    invoke-virtual {v1, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 402
    .line 403
    const/16 v21, 0x0

    .line 404
    .line 405
    const/16 v19, 0x1

    .line 406
    .line 407
    const/16 v20, 0x0

    .line 408
    .line 409
    const-string v17, "flex_duration"

    .line 410
    .line 411
    const-string v18, "INTEGER"

    .line 412
    .line 413
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 414
    .line 415
    .line 416
    move-object/from16 v3, v16

    .line 417
    .line 418
    const-string v5, "flex_duration"

    .line 419
    .line 420
    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 424
    .line 425
    const/16 v19, 0x0

    .line 426
    .line 427
    const/16 v20, 0x1

    .line 428
    .line 429
    const/16 v17, 0x1

    .line 430
    .line 431
    const/16 v18, 0x0

    .line 432
    .line 433
    const-string v15, "run_attempt_count"

    .line 434
    .line 435
    const-string v16, "INTEGER"

    .line 436
    .line 437
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 438
    .line 439
    .line 440
    const-string v3, "run_attempt_count"

    .line 441
    .line 442
    invoke-virtual {v1, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 446
    .line 447
    const/16 v20, 0x0

    .line 448
    .line 449
    const/16 v21, 0x1

    .line 450
    .line 451
    const/16 v18, 0x1

    .line 452
    .line 453
    const/16 v19, 0x0

    .line 454
    .line 455
    const-string v16, "backoff_policy"

    .line 456
    .line 457
    const-string v17, "INTEGER"

    .line 458
    .line 459
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 460
    .line 461
    .line 462
    const-string v3, "backoff_policy"

    .line 463
    .line 464
    invoke-virtual {v1, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 468
    .line 469
    const/16 v21, 0x0

    .line 470
    .line 471
    const/16 v19, 0x1

    .line 472
    .line 473
    const/16 v20, 0x0

    .line 474
    .line 475
    const-string v17, "backoff_delay_duration"

    .line 476
    .line 477
    const-string v18, "INTEGER"

    .line 478
    .line 479
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 480
    .line 481
    .line 482
    move-object/from16 v3, v16

    .line 483
    .line 484
    const-string v5, "backoff_delay_duration"

    .line 485
    .line 486
    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 490
    .line 491
    const-string v19, "-1"

    .line 492
    .line 493
    const/16 v20, 0x1

    .line 494
    .line 495
    const/16 v17, 0x1

    .line 496
    .line 497
    const/16 v18, 0x0

    .line 498
    .line 499
    const-string v15, "last_enqueue_time"

    .line 500
    .line 501
    const-string v16, "INTEGER"

    .line 502
    .line 503
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 504
    .line 505
    .line 506
    const-string v3, "last_enqueue_time"

    .line 507
    .line 508
    invoke-virtual {v1, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 512
    .line 513
    const/16 v20, 0x0

    .line 514
    .line 515
    const/16 v21, 0x1

    .line 516
    .line 517
    const/16 v18, 0x1

    .line 518
    .line 519
    const/16 v19, 0x0

    .line 520
    .line 521
    const-string v16, "minimum_retention_duration"

    .line 522
    .line 523
    const-string v17, "INTEGER"

    .line 524
    .line 525
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 526
    .line 527
    .line 528
    const-string v5, "minimum_retention_duration"

    .line 529
    .line 530
    invoke-virtual {v1, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 534
    .line 535
    const/16 v21, 0x0

    .line 536
    .line 537
    const/16 v19, 0x1

    .line 538
    .line 539
    const/16 v20, 0x0

    .line 540
    .line 541
    const-string v17, "schedule_requested_at"

    .line 542
    .line 543
    const-string v18, "INTEGER"

    .line 544
    .line 545
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 546
    .line 547
    .line 548
    move-object/from16 v5, v16

    .line 549
    .line 550
    const-string v7, "schedule_requested_at"

    .line 551
    .line 552
    invoke-virtual {v1, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 556
    .line 557
    const/16 v19, 0x0

    .line 558
    .line 559
    const/16 v20, 0x1

    .line 560
    .line 561
    const/16 v17, 0x1

    .line 562
    .line 563
    const/16 v18, 0x0

    .line 564
    .line 565
    const-string v15, "run_in_foreground"

    .line 566
    .line 567
    const-string v16, "INTEGER"

    .line 568
    .line 569
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 570
    .line 571
    .line 572
    const-string v5, "run_in_foreground"

    .line 573
    .line 574
    invoke-virtual {v1, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 578
    .line 579
    const/16 v20, 0x0

    .line 580
    .line 581
    const/16 v21, 0x1

    .line 582
    .line 583
    const/16 v18, 0x1

    .line 584
    .line 585
    const/16 v19, 0x0

    .line 586
    .line 587
    const-string v16, "out_of_quota_policy"

    .line 588
    .line 589
    const-string v17, "INTEGER"

    .line 590
    .line 591
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 592
    .line 593
    .line 594
    const-string v5, "out_of_quota_policy"

    .line 595
    .line 596
    invoke-virtual {v1, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 600
    .line 601
    const-string v21, "0"

    .line 602
    .line 603
    const/16 v19, 0x1

    .line 604
    .line 605
    const/16 v20, 0x0

    .line 606
    .line 607
    const-string v17, "period_count"

    .line 608
    .line 609
    const-string v18, "INTEGER"

    .line 610
    .line 611
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 612
    .line 613
    .line 614
    move-object/from16 v5, v16

    .line 615
    .line 616
    const-string v8, "period_count"

    .line 617
    .line 618
    invoke-virtual {v1, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 622
    .line 623
    const-string v19, "0"

    .line 624
    .line 625
    const/16 v20, 0x1

    .line 626
    .line 627
    const/16 v17, 0x1

    .line 628
    .line 629
    const/16 v18, 0x0

    .line 630
    .line 631
    const-string v15, "generation"

    .line 632
    .line 633
    const-string v16, "INTEGER"

    .line 634
    .line 635
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 636
    .line 637
    .line 638
    const-string v5, "generation"

    .line 639
    .line 640
    invoke-virtual {v1, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 644
    .line 645
    const-string v20, "9223372036854775807"

    .line 646
    .line 647
    const/16 v21, 0x1

    .line 648
    .line 649
    const/16 v18, 0x1

    .line 650
    .line 651
    const/16 v19, 0x0

    .line 652
    .line 653
    const-string v16, "next_schedule_time_override"

    .line 654
    .line 655
    const-string v17, "INTEGER"

    .line 656
    .line 657
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 658
    .line 659
    .line 660
    const-string v8, "next_schedule_time_override"

    .line 661
    .line 662
    invoke-virtual {v1, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 666
    .line 667
    const-string v21, "0"

    .line 668
    .line 669
    const/16 v19, 0x1

    .line 670
    .line 671
    const/16 v20, 0x0

    .line 672
    .line 673
    const-string v17, "next_schedule_time_override_generation"

    .line 674
    .line 675
    const-string v18, "INTEGER"

    .line 676
    .line 677
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 678
    .line 679
    .line 680
    move-object/from16 v8, v16

    .line 681
    .line 682
    const-string v10, "next_schedule_time_override_generation"

    .line 683
    .line 684
    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 688
    .line 689
    const-string v19, "-256"

    .line 690
    .line 691
    const/16 v20, 0x1

    .line 692
    .line 693
    const/16 v17, 0x1

    .line 694
    .line 695
    const/16 v18, 0x0

    .line 696
    .line 697
    const-string v15, "stop_reason"

    .line 698
    .line 699
    const-string v16, "INTEGER"

    .line 700
    .line 701
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 702
    .line 703
    .line 704
    const-string v8, "stop_reason"

    .line 705
    .line 706
    invoke-virtual {v1, v8, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    .line 708
    .line 709
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 710
    .line 711
    const/16 v20, 0x0

    .line 712
    .line 713
    const/16 v21, 0x1

    .line 714
    .line 715
    const/16 v18, 0x1

    .line 716
    .line 717
    const/16 v19, 0x0

    .line 718
    .line 719
    const-string v16, "required_network_type"

    .line 720
    .line 721
    const-string v17, "INTEGER"

    .line 722
    .line 723
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 724
    .line 725
    .line 726
    const-string v8, "required_network_type"

    .line 727
    .line 728
    invoke-virtual {v1, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    .line 730
    .line 731
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 732
    .line 733
    const/16 v21, 0x0

    .line 734
    .line 735
    const/16 v19, 0x1

    .line 736
    .line 737
    const/16 v20, 0x0

    .line 738
    .line 739
    const-string v17, "requires_charging"

    .line 740
    .line 741
    const-string v18, "INTEGER"

    .line 742
    .line 743
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 744
    .line 745
    .line 746
    move-object/from16 v8, v16

    .line 747
    .line 748
    const-string v10, "requires_charging"

    .line 749
    .line 750
    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    .line 752
    .line 753
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 754
    .line 755
    const/16 v19, 0x0

    .line 756
    .line 757
    const/16 v20, 0x1

    .line 758
    .line 759
    const/16 v17, 0x1

    .line 760
    .line 761
    const/16 v18, 0x0

    .line 762
    .line 763
    const-string v15, "requires_device_idle"

    .line 764
    .line 765
    const-string v16, "INTEGER"

    .line 766
    .line 767
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 768
    .line 769
    .line 770
    const-string v8, "requires_device_idle"

    .line 771
    .line 772
    invoke-virtual {v1, v8, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    .line 774
    .line 775
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 776
    .line 777
    const/16 v20, 0x0

    .line 778
    .line 779
    const/16 v21, 0x1

    .line 780
    .line 781
    const/16 v18, 0x1

    .line 782
    .line 783
    const/16 v19, 0x0

    .line 784
    .line 785
    const-string v16, "requires_battery_not_low"

    .line 786
    .line 787
    const-string v17, "INTEGER"

    .line 788
    .line 789
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 790
    .line 791
    .line 792
    const-string v8, "requires_battery_not_low"

    .line 793
    .line 794
    invoke-virtual {v1, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    .line 796
    .line 797
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 798
    .line 799
    const/16 v21, 0x0

    .line 800
    .line 801
    const/16 v19, 0x1

    .line 802
    .line 803
    const/16 v20, 0x0

    .line 804
    .line 805
    const-string v17, "requires_storage_not_low"

    .line 806
    .line 807
    const-string v18, "INTEGER"

    .line 808
    .line 809
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 810
    .line 811
    .line 812
    move-object/from16 v8, v16

    .line 813
    .line 814
    const-string v10, "requires_storage_not_low"

    .line 815
    .line 816
    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    .line 818
    .line 819
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 820
    .line 821
    const/16 v19, 0x0

    .line 822
    .line 823
    const/16 v20, 0x1

    .line 824
    .line 825
    const/16 v17, 0x1

    .line 826
    .line 827
    const/16 v18, 0x0

    .line 828
    .line 829
    const-string v15, "trigger_content_update_delay"

    .line 830
    .line 831
    const-string v16, "INTEGER"

    .line 832
    .line 833
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 834
    .line 835
    .line 836
    const-string v8, "trigger_content_update_delay"

    .line 837
    .line 838
    invoke-virtual {v1, v8, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 842
    .line 843
    const/16 v20, 0x0

    .line 844
    .line 845
    const/16 v21, 0x1

    .line 846
    .line 847
    const/16 v18, 0x1

    .line 848
    .line 849
    const/16 v19, 0x0

    .line 850
    .line 851
    const-string v16, "trigger_max_content_delay"

    .line 852
    .line 853
    const-string v17, "INTEGER"

    .line 854
    .line 855
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 856
    .line 857
    .line 858
    const-string v8, "trigger_max_content_delay"

    .line 859
    .line 860
    invoke-virtual {v1, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    .line 862
    .line 863
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 864
    .line 865
    const/16 v21, 0x0

    .line 866
    .line 867
    const/16 v19, 0x1

    .line 868
    .line 869
    const/16 v20, 0x0

    .line 870
    .line 871
    const-string v17, "content_uri_triggers"

    .line 872
    .line 873
    const-string v18, "BLOB"

    .line 874
    .line 875
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 876
    .line 877
    .line 878
    move-object/from16 v8, v16

    .line 879
    .line 880
    const-string v10, "content_uri_triggers"

    .line 881
    .line 882
    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    .line 884
    .line 885
    new-instance v8, Ljava/util/HashSet;

    .line 886
    .line 887
    invoke-direct {v8, v13}, Ljava/util/HashSet;-><init>(I)V

    .line 888
    .line 889
    .line 890
    new-instance v10, Ljava/util/HashSet;

    .line 891
    .line 892
    invoke-direct {v10, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 893
    .line 894
    .line 895
    new-instance v11, Landroidx/room/util/TableInfo$Index;

    .line 896
    .line 897
    filled-new-array {v7}, [Ljava/lang/String;

    .line 898
    .line 899
    .line 900
    move-result-object v7

    .line 901
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 902
    .line 903
    .line 904
    move-result-object v7

    .line 905
    filled-new-array {v9}, [Ljava/lang/String;

    .line 906
    .line 907
    .line 908
    move-result-object v14

    .line 909
    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 910
    .line 911
    .line 912
    move-result-object v14

    .line 913
    const-string v15, "index_WorkSpec_schedule_requested_at"

    .line 914
    .line 915
    invoke-direct {v11, v15, v13, v7, v14}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 916
    .line 917
    .line 918
    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 919
    .line 920
    .line 921
    new-instance v7, Landroidx/room/util/TableInfo$Index;

    .line 922
    .line 923
    filled-new-array {v3}, [Ljava/lang/String;

    .line 924
    .line 925
    .line 926
    move-result-object v3

    .line 927
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 928
    .line 929
    .line 930
    move-result-object v3

    .line 931
    filled-new-array {v9}, [Ljava/lang/String;

    .line 932
    .line 933
    .line 934
    move-result-object v11

    .line 935
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 936
    .line 937
    .line 938
    move-result-object v11

    .line 939
    const-string v14, "index_WorkSpec_last_enqueue_time"

    .line 940
    .line 941
    invoke-direct {v7, v14, v13, v3, v11}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 942
    .line 943
    .line 944
    invoke-virtual {v10, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 945
    .line 946
    .line 947
    new-instance v3, Landroidx/room/util/TableInfo;

    .line 948
    .line 949
    const-string v7, "WorkSpec"

    .line 950
    .line 951
    invoke-direct {v3, v7, v1, v8, v10}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 952
    .line 953
    .line 954
    invoke-static {v0, v7}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 955
    .line 956
    .line 957
    move-result-object v1

    .line 958
    invoke-virtual {v3, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 959
    .line 960
    .line 961
    move-result v7

    .line 962
    if-nez v7, :cond_1

    .line 963
    .line 964
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    .line 965
    .line 966
    new-instance v2, Ljava/lang/StringBuilder;

    .line 967
    .line 968
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 969
    .line 970
    .line 971
    const-string v4, "WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n"

    .line 972
    .line 973
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    .line 975
    .line 976
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 977
    .line 978
    .line 979
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    .line 981
    .line 982
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 983
    .line 984
    .line 985
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 986
    .line 987
    .line 988
    move-result-object v1

    .line 989
    invoke-direct {v0, v13, v1}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    .line 990
    .line 991
    .line 992
    return-object v0

    .line 993
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    .line 994
    .line 995
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 996
    .line 997
    .line 998
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 999
    .line 1000
    const/16 v19, 0x0

    .line 1001
    .line 1002
    const/16 v20, 0x1

    .line 1003
    .line 1004
    const-string v15, "tag"

    .line 1005
    .line 1006
    const-string v16, "TEXT"

    .line 1007
    .line 1008
    const/16 v17, 0x1

    .line 1009
    .line 1010
    const/16 v18, 0x1

    .line 1011
    .line 1012
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1013
    .line 1014
    .line 1015
    const-string v3, "tag"

    .line 1016
    .line 1017
    invoke-virtual {v1, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    .line 1019
    .line 1020
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 1021
    .line 1022
    const/16 v20, 0x0

    .line 1023
    .line 1024
    const/16 v21, 0x1

    .line 1025
    .line 1026
    const-string v16, "work_spec_id"

    .line 1027
    .line 1028
    const-string v17, "TEXT"

    .line 1029
    .line 1030
    const/16 v19, 0x2

    .line 1031
    .line 1032
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1033
    .line 1034
    .line 1035
    invoke-virtual {v1, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    .line 1037
    .line 1038
    new-instance v3, Ljava/util/HashSet;

    .line 1039
    .line 1040
    const/4 v7, 0x1

    .line 1041
    invoke-direct {v3, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 1042
    .line 1043
    .line 1044
    new-instance v14, Landroidx/room/util/TableInfo$ForeignKey;

    .line 1045
    .line 1046
    filled-new-array {v4}, [Ljava/lang/String;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v8

    .line 1050
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v18

    .line 1054
    filled-new-array {v12}, [Ljava/lang/String;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v8

    .line 1058
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v19

    .line 1062
    const-string v15, "WorkSpec"

    .line 1063
    .line 1064
    const-string v16, "CASCADE"

    .line 1065
    .line 1066
    const-string v17, "CASCADE"

    .line 1067
    .line 1068
    invoke-direct/range {v14 .. v19}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {v3, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1072
    .line 1073
    .line 1074
    new-instance v8, Ljava/util/HashSet;

    .line 1075
    .line 1076
    invoke-direct {v8, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 1077
    .line 1078
    .line 1079
    new-instance v10, Landroidx/room/util/TableInfo$Index;

    .line 1080
    .line 1081
    filled-new-array {v4}, [Ljava/lang/String;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v11

    .line 1085
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v11

    .line 1089
    filled-new-array {v9}, [Ljava/lang/String;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v14

    .line 1093
    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v14

    .line 1097
    const-string v15, "index_WorkTag_work_spec_id"

    .line 1098
    .line 1099
    invoke-direct {v10, v15, v13, v11, v14}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 1100
    .line 1101
    .line 1102
    invoke-virtual {v8, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1103
    .line 1104
    .line 1105
    new-instance v10, Landroidx/room/util/TableInfo;

    .line 1106
    .line 1107
    const-string v11, "WorkTag"

    .line 1108
    .line 1109
    invoke-direct {v10, v11, v1, v3, v8}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 1110
    .line 1111
    .line 1112
    invoke-static {v0, v11}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v1

    .line 1116
    invoke-virtual {v10, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1117
    .line 1118
    .line 1119
    move-result v3

    .line 1120
    if-nez v3, :cond_2

    .line 1121
    .line 1122
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    .line 1123
    .line 1124
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1125
    .line 1126
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1127
    .line 1128
    .line 1129
    const-string v3, "WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n"

    .line 1130
    .line 1131
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    .line 1133
    .line 1134
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1135
    .line 1136
    .line 1137
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    .line 1139
    .line 1140
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1141
    .line 1142
    .line 1143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v1

    .line 1147
    invoke-direct {v0, v13, v1}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    .line 1148
    .line 1149
    .line 1150
    return-object v0

    .line 1151
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    .line 1152
    .line 1153
    const/4 v3, 0x3

    .line 1154
    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 1155
    .line 1156
    .line 1157
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 1158
    .line 1159
    const/16 v19, 0x0

    .line 1160
    .line 1161
    const/16 v20, 0x1

    .line 1162
    .line 1163
    const-string v15, "work_spec_id"

    .line 1164
    .line 1165
    const-string v16, "TEXT"

    .line 1166
    .line 1167
    const/16 v17, 0x1

    .line 1168
    .line 1169
    const/16 v18, 0x1

    .line 1170
    .line 1171
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1172
    .line 1173
    .line 1174
    invoke-virtual {v1, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    .line 1176
    .line 1177
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 1178
    .line 1179
    const-string v20, "0"

    .line 1180
    .line 1181
    const/16 v21, 0x1

    .line 1182
    .line 1183
    const-string v16, "generation"

    .line 1184
    .line 1185
    const-string v17, "INTEGER"

    .line 1186
    .line 1187
    const/16 v19, 0x2

    .line 1188
    .line 1189
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1190
    .line 1191
    .line 1192
    invoke-virtual {v1, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    .line 1194
    .line 1195
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 1196
    .line 1197
    const/16 v21, 0x0

    .line 1198
    .line 1199
    const/16 v22, 0x1

    .line 1200
    .line 1201
    const-string v17, "system_id"

    .line 1202
    .line 1203
    const-string v18, "INTEGER"

    .line 1204
    .line 1205
    const/16 v19, 0x1

    .line 1206
    .line 1207
    const/16 v20, 0x0

    .line 1208
    .line 1209
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1210
    .line 1211
    .line 1212
    move-object/from16 v3, v16

    .line 1213
    .line 1214
    const-string v5, "system_id"

    .line 1215
    .line 1216
    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    .line 1218
    .line 1219
    new-instance v3, Ljava/util/HashSet;

    .line 1220
    .line 1221
    invoke-direct {v3, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 1222
    .line 1223
    .line 1224
    new-instance v14, Landroidx/room/util/TableInfo$ForeignKey;

    .line 1225
    .line 1226
    filled-new-array {v4}, [Ljava/lang/String;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v5

    .line 1230
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v18

    .line 1234
    filled-new-array {v12}, [Ljava/lang/String;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v5

    .line 1238
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v19

    .line 1242
    const-string v15, "WorkSpec"

    .line 1243
    .line 1244
    const-string v16, "CASCADE"

    .line 1245
    .line 1246
    const-string v17, "CASCADE"

    .line 1247
    .line 1248
    invoke-direct/range {v14 .. v19}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1249
    .line 1250
    .line 1251
    invoke-virtual {v3, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1252
    .line 1253
    .line 1254
    new-instance v5, Ljava/util/HashSet;

    .line 1255
    .line 1256
    invoke-direct {v5, v13}, Ljava/util/HashSet;-><init>(I)V

    .line 1257
    .line 1258
    .line 1259
    new-instance v8, Landroidx/room/util/TableInfo;

    .line 1260
    .line 1261
    const-string v10, "SystemIdInfo"

    .line 1262
    .line 1263
    invoke-direct {v8, v10, v1, v3, v5}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 1264
    .line 1265
    .line 1266
    invoke-static {v0, v10}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v1

    .line 1270
    invoke-virtual {v8, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1271
    .line 1272
    .line 1273
    move-result v3

    .line 1274
    if-nez v3, :cond_3

    .line 1275
    .line 1276
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    .line 1277
    .line 1278
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1279
    .line 1280
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1281
    .line 1282
    .line 1283
    const-string v3, "SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n"

    .line 1284
    .line 1285
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    .line 1287
    .line 1288
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1289
    .line 1290
    .line 1291
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    .line 1293
    .line 1294
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1295
    .line 1296
    .line 1297
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v1

    .line 1301
    invoke-direct {v0, v13, v1}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    .line 1302
    .line 1303
    .line 1304
    return-object v0

    .line 1305
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    .line 1306
    .line 1307
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 1308
    .line 1309
    .line 1310
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 1311
    .line 1312
    const/16 v19, 0x0

    .line 1313
    .line 1314
    const/16 v20, 0x1

    .line 1315
    .line 1316
    const-string v15, "name"

    .line 1317
    .line 1318
    const-string v16, "TEXT"

    .line 1319
    .line 1320
    const/16 v17, 0x1

    .line 1321
    .line 1322
    const/16 v18, 0x1

    .line 1323
    .line 1324
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1325
    .line 1326
    .line 1327
    const-string v3, "name"

    .line 1328
    .line 1329
    invoke-virtual {v1, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    .line 1331
    .line 1332
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 1333
    .line 1334
    const/16 v20, 0x0

    .line 1335
    .line 1336
    const/16 v21, 0x1

    .line 1337
    .line 1338
    const-string v16, "work_spec_id"

    .line 1339
    .line 1340
    const-string v17, "TEXT"

    .line 1341
    .line 1342
    const/16 v19, 0x2

    .line 1343
    .line 1344
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1345
    .line 1346
    .line 1347
    invoke-virtual {v1, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    .line 1349
    .line 1350
    new-instance v3, Ljava/util/HashSet;

    .line 1351
    .line 1352
    invoke-direct {v3, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 1353
    .line 1354
    .line 1355
    new-instance v14, Landroidx/room/util/TableInfo$ForeignKey;

    .line 1356
    .line 1357
    filled-new-array {v4}, [Ljava/lang/String;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v5

    .line 1361
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1362
    .line 1363
    .line 1364
    move-result-object v18

    .line 1365
    filled-new-array {v12}, [Ljava/lang/String;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v5

    .line 1369
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v19

    .line 1373
    const-string v15, "WorkSpec"

    .line 1374
    .line 1375
    const-string v16, "CASCADE"

    .line 1376
    .line 1377
    const-string v17, "CASCADE"

    .line 1378
    .line 1379
    invoke-direct/range {v14 .. v19}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1380
    .line 1381
    .line 1382
    invoke-virtual {v3, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1383
    .line 1384
    .line 1385
    new-instance v5, Ljava/util/HashSet;

    .line 1386
    .line 1387
    invoke-direct {v5, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 1388
    .line 1389
    .line 1390
    new-instance v8, Landroidx/room/util/TableInfo$Index;

    .line 1391
    .line 1392
    filled-new-array {v4}, [Ljava/lang/String;

    .line 1393
    .line 1394
    .line 1395
    move-result-object v10

    .line 1396
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v10

    .line 1400
    filled-new-array {v9}, [Ljava/lang/String;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v9

    .line 1404
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1405
    .line 1406
    .line 1407
    move-result-object v9

    .line 1408
    const-string v11, "index_WorkName_work_spec_id"

    .line 1409
    .line 1410
    invoke-direct {v8, v11, v13, v10, v9}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 1411
    .line 1412
    .line 1413
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1414
    .line 1415
    .line 1416
    new-instance v8, Landroidx/room/util/TableInfo;

    .line 1417
    .line 1418
    const-string v9, "WorkName"

    .line 1419
    .line 1420
    invoke-direct {v8, v9, v1, v3, v5}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 1421
    .line 1422
    .line 1423
    invoke-static {v0, v9}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v1

    .line 1427
    invoke-virtual {v8, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1428
    .line 1429
    .line 1430
    move-result v3

    .line 1431
    if-nez v3, :cond_4

    .line 1432
    .line 1433
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    .line 1434
    .line 1435
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1436
    .line 1437
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1438
    .line 1439
    .line 1440
    const-string v3, "WorkName(androidx.work.impl.model.WorkName).\n Expected:\n"

    .line 1441
    .line 1442
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1443
    .line 1444
    .line 1445
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1446
    .line 1447
    .line 1448
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1449
    .line 1450
    .line 1451
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1452
    .line 1453
    .line 1454
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1455
    .line 1456
    .line 1457
    move-result-object v1

    .line 1458
    invoke-direct {v0, v13, v1}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    .line 1459
    .line 1460
    .line 1461
    return-object v0

    .line 1462
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    .line 1463
    .line 1464
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 1465
    .line 1466
    .line 1467
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 1468
    .line 1469
    const/16 v19, 0x0

    .line 1470
    .line 1471
    const/16 v20, 0x1

    .line 1472
    .line 1473
    const-string v15, "work_spec_id"

    .line 1474
    .line 1475
    const-string v16, "TEXT"

    .line 1476
    .line 1477
    const/16 v17, 0x1

    .line 1478
    .line 1479
    const/16 v18, 0x1

    .line 1480
    .line 1481
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1482
    .line 1483
    .line 1484
    invoke-virtual {v1, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1485
    .line 1486
    .line 1487
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 1488
    .line 1489
    const/16 v20, 0x0

    .line 1490
    .line 1491
    const/16 v21, 0x1

    .line 1492
    .line 1493
    const-string v16, "progress"

    .line 1494
    .line 1495
    const-string v17, "BLOB"

    .line 1496
    .line 1497
    const/16 v19, 0x0

    .line 1498
    .line 1499
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1500
    .line 1501
    .line 1502
    const-string v3, "progress"

    .line 1503
    .line 1504
    invoke-virtual {v1, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    .line 1506
    .line 1507
    new-instance v3, Ljava/util/HashSet;

    .line 1508
    .line 1509
    invoke-direct {v3, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 1510
    .line 1511
    .line 1512
    new-instance v14, Landroidx/room/util/TableInfo$ForeignKey;

    .line 1513
    .line 1514
    filled-new-array {v4}, [Ljava/lang/String;

    .line 1515
    .line 1516
    .line 1517
    move-result-object v4

    .line 1518
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1519
    .line 1520
    .line 1521
    move-result-object v18

    .line 1522
    filled-new-array {v12}, [Ljava/lang/String;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v4

    .line 1526
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1527
    .line 1528
    .line 1529
    move-result-object v19

    .line 1530
    const-string v15, "WorkSpec"

    .line 1531
    .line 1532
    const-string v16, "CASCADE"

    .line 1533
    .line 1534
    const-string v17, "CASCADE"

    .line 1535
    .line 1536
    invoke-direct/range {v14 .. v19}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1537
    .line 1538
    .line 1539
    invoke-virtual {v3, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1540
    .line 1541
    .line 1542
    new-instance v4, Ljava/util/HashSet;

    .line 1543
    .line 1544
    invoke-direct {v4, v13}, Ljava/util/HashSet;-><init>(I)V

    .line 1545
    .line 1546
    .line 1547
    new-instance v5, Landroidx/room/util/TableInfo;

    .line 1548
    .line 1549
    const-string v8, "WorkProgress"

    .line 1550
    .line 1551
    invoke-direct {v5, v8, v1, v3, v4}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 1552
    .line 1553
    .line 1554
    invoke-static {v0, v8}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1555
    .line 1556
    .line 1557
    move-result-object v1

    .line 1558
    invoke-virtual {v5, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1559
    .line 1560
    .line 1561
    move-result v3

    .line 1562
    if-nez v3, :cond_5

    .line 1563
    .line 1564
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    .line 1565
    .line 1566
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1567
    .line 1568
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1569
    .line 1570
    .line 1571
    const-string v3, "WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n"

    .line 1572
    .line 1573
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1574
    .line 1575
    .line 1576
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1577
    .line 1578
    .line 1579
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1580
    .line 1581
    .line 1582
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1583
    .line 1584
    .line 1585
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1586
    .line 1587
    .line 1588
    move-result-object v1

    .line 1589
    invoke-direct {v0, v13, v1}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    .line 1590
    .line 1591
    .line 1592
    return-object v0

    .line 1593
    :cond_5
    new-instance v1, Ljava/util/HashMap;

    .line 1594
    .line 1595
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 1596
    .line 1597
    .line 1598
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 1599
    .line 1600
    const/16 v19, 0x0

    .line 1601
    .line 1602
    const/16 v20, 0x1

    .line 1603
    .line 1604
    const-string v15, "key"

    .line 1605
    .line 1606
    const-string v16, "TEXT"

    .line 1607
    .line 1608
    const/16 v17, 0x1

    .line 1609
    .line 1610
    const/16 v18, 0x1

    .line 1611
    .line 1612
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1613
    .line 1614
    .line 1615
    const-string v2, "key"

    .line 1616
    .line 1617
    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1618
    .line 1619
    .line 1620
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 1621
    .line 1622
    const/16 v20, 0x0

    .line 1623
    .line 1624
    const/16 v21, 0x1

    .line 1625
    .line 1626
    const-string v16, "long_value"

    .line 1627
    .line 1628
    const-string v17, "INTEGER"

    .line 1629
    .line 1630
    const/16 v18, 0x0

    .line 1631
    .line 1632
    const/16 v19, 0x0

    .line 1633
    .line 1634
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1635
    .line 1636
    .line 1637
    const-string v2, "long_value"

    .line 1638
    .line 1639
    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1640
    .line 1641
    .line 1642
    new-instance v2, Ljava/util/HashSet;

    .line 1643
    .line 1644
    invoke-direct {v2, v13}, Ljava/util/HashSet;-><init>(I)V

    .line 1645
    .line 1646
    .line 1647
    new-instance v3, Ljava/util/HashSet;

    .line 1648
    .line 1649
    invoke-direct {v3, v13}, Ljava/util/HashSet;-><init>(I)V

    .line 1650
    .line 1651
    .line 1652
    new-instance v4, Landroidx/room/util/TableInfo;

    .line 1653
    .line 1654
    const-string v5, "Preference"

    .line 1655
    .line 1656
    invoke-direct {v4, v5, v1, v2, v3}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 1657
    .line 1658
    .line 1659
    invoke-static {v0, v5}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1660
    .line 1661
    .line 1662
    move-result-object v0

    .line 1663
    invoke-virtual {v4, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1664
    .line 1665
    .line 1666
    move-result v1

    .line 1667
    if-nez v1, :cond_6

    .line 1668
    .line 1669
    new-instance v1, Landroidx/room/RoomOpenHelper$ValidationResult;

    .line 1670
    .line 1671
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1672
    .line 1673
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1674
    .line 1675
    .line 1676
    const-string v3, "Preference(androidx.work.impl.model.Preference).\n Expected:\n"

    .line 1677
    .line 1678
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1679
    .line 1680
    .line 1681
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1682
    .line 1683
    .line 1684
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1685
    .line 1686
    .line 1687
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1688
    .line 1689
    .line 1690
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1691
    .line 1692
    .line 1693
    move-result-object v0

    .line 1694
    invoke-direct {v1, v13, v0}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    .line 1695
    .line 1696
    .line 1697
    return-object v1

    .line 1698
    :cond_6
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    .line 1699
    .line 1700
    const/4 v1, 0x0

    .line 1701
    invoke-direct {v0, v7, v1}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    .line 1702
    .line 1703
    .line 1704
    return-object v0
.end method
