.class public Lcom/meishu/sdk/core/utils/r1;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/bquery/h;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/io/File;

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/utils/VideoLoadManager;Lcom/meishu/sdk/core/bquery/h;Ljava/lang/String;Ljava/io/File;Z)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/meishu/sdk/core/utils/r1;->a:Lcom/meishu/sdk/core/bquery/h;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/meishu/sdk/core/utils/r1;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/meishu/sdk/core/utils/r1;->c:Ljava/io/File;

    .line 6
    .line 7
    iput-boolean p5, p0, Lcom/meishu/sdk/core/utils/r1;->d:Z

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/r1;->a:Lcom/meishu/sdk/core/bquery/h;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/r1;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/meishu/sdk/core/utils/r1;->c:Ljava/io/File;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/meishu/sdk/core/utils/r1;->d:Z

    .line 8
    .line 9
    invoke-interface {v0, v1, v2, v3}, Lcom/meishu/sdk/core/bquery/h;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
