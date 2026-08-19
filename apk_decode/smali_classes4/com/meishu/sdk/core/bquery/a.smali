.class public Lcom/meishu/sdk/core/bquery/a;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/bquery/h;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/bquery/e;Lcom/meishu/sdk/core/bquery/h;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/meishu/sdk/core/bquery/a;->a:Lcom/meishu/sdk/core/bquery/h;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/meishu/sdk/core/bquery/a;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/meishu/sdk/core/bquery/a;->c:Ljava/io/File;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/bquery/a;->a:Lcom/meishu/sdk/core/bquery/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/meishu/sdk/core/bquery/a;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/meishu/sdk/core/bquery/a;->c:Ljava/io/File;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-interface {v0, v1, v2, v3}, Lcom/meishu/sdk/core/bquery/h;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
