.class public Lcom/meishu/sdk/core/bquery/f;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:J


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/bquery/f;->a:Ljava/io/File;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/meishu/sdk/core/bquery/f;->b:J

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/bquery/f;->a:Ljava/io/File;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/meishu/sdk/core/bquery/f;->b:J

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    array-length v4, v0

    .line 17
    if-ge v3, v4, :cond_3

    .line 18
    .line 19
    aget-object v4, v0, v3

    .line 20
    .line 21
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_2

    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v5

    .line 34
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    .line 35
    .line 36
    .line 37
    move-result-wide v7

    .line 38
    sub-long/2addr v5, v7

    .line 39
    cmp-long v5, v5, v1

    .line 40
    .line 41
    if-gez v5, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    :cond_3
    :goto_2
    return-void
.end method
