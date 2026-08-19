.class public Lcom/meishu/sdk/core/utils/s1;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/bquery/h;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/utils/VideoLoadManager;Lcom/meishu/sdk/core/bquery/h;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/meishu/sdk/core/utils/s1;->a:Lcom/meishu/sdk/core/bquery/h;

    .line 2
    .line 3
    iput p3, p0, Lcom/meishu/sdk/core/utils/s1;->b:I

    .line 4
    .line 5
    iput-object p4, p0, Lcom/meishu/sdk/core/utils/s1;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/s1;->a:Lcom/meishu/sdk/core/bquery/h;

    .line 2
    .line 3
    iget v1, p0, Lcom/meishu/sdk/core/utils/s1;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/meishu/sdk/core/utils/s1;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Lcom/meishu/sdk/core/bquery/h;->onFail(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
