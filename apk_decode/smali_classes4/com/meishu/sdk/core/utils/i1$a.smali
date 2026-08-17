.class public Lcom/meishu/sdk/core/utils/i1$a;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/utils/i1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/utils/i1;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/utils/i1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/i1$a;->a:Lcom/meishu/sdk/core/utils/i1;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/i1$a;->a:Lcom/meishu/sdk/core/utils/i1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/core/utils/i1;->a:Lcom/meishu/sdk/core/utils/k1;

    .line 4
    .line 5
    new-instance v1, Ljava/io/IOException;

    .line 6
    .line 7
    const-string v2, "timer timeout"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/k1;->a(Lcom/meishu/sdk/core/utils/k1;Ljava/io/IOException;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
