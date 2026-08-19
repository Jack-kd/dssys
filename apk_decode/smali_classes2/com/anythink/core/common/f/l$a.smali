.class public final Lcom/anythink/core/common/f/l$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/f/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "inspect_info"

.field public static final b:Ljava/lang/String; = "inspect_id"

.field public static final c:Ljava/lang/String; = "update_time"

.field public static final d:Ljava/lang/String; = "inspect_result"

.field public static final e:Ljava/lang/String; = "pgk_name"

.field public static final f:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS inspect_info(inspect_id TEXT, inspect_result INTEGER, pgk_name TEXT, update_time INTEGER )"

.field public static final g:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS inspect_info(inspect_id TEXT, update_time INTEGER )"

.field public static final h:Ljava/lang/String; = "ALTER TABLE inspect_info ADD COLUMN inspect_result INTEGER DEFAULT 1"

.field public static final i:Ljava/lang/String; = "ALTER TABLE inspect_info DROP COLUMN pgk_name"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
