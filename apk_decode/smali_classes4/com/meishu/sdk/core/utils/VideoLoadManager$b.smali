.class public Lcom/meishu/sdk/core/utils/VideoLoadManager$b;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/utils/VideoLoadManager;->a(Ljava/lang/String;Ljava/io/File;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/io/File;

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/utils/VideoLoadManager;Ljava/util/List;Ljava/lang/String;Ljava/io/File;Z)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/meishu/sdk/core/utils/VideoLoadManager$b;->a:Ljava/util/List;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/meishu/sdk/core/utils/VideoLoadManager$b;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/meishu/sdk/core/utils/VideoLoadManager$b;->c:Ljava/io/File;

    .line 6
    .line 7
    iput-boolean p5, p0, Lcom/meishu/sdk/core/utils/VideoLoadManager$b;->d:Z

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/VideoLoadManager$b;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/meishu/sdk/core/bquery/h;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v2, p0, Lcom/meishu/sdk/core/utils/VideoLoadManager$b;->b:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/meishu/sdk/core/utils/VideoLoadManager$b;->c:Ljava/io/File;

    .line 24
    .line 25
    iget-boolean v4, p0, Lcom/meishu/sdk/core/utils/VideoLoadManager$b;->d:Z

    .line 26
    .line 27
    invoke-interface {v1, v2, v3, v4}, Lcom/meishu/sdk/core/bquery/h;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-void
.end method
