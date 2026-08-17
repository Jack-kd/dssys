.class public Lcom/meishu/sdk/core/utils/c0$a;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/utils/c0;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/meishu/sdk/core/utils/c0;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/utils/c0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/c0$a;->b:Lcom/meishu/sdk/core/utils/c0;

    .line 2
    .line 3
    iput p2, p0, Lcom/meishu/sdk/core/utils/c0$a;->a:I

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/c0$a;->b:Lcom/meishu/sdk/core/utils/c0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/core/utils/c0;->a:Lcom/meishu/sdk/core/utils/x;

    .line 4
    .line 5
    new-instance v1, Ljava/io/IOException;

    .line 6
    .line 7
    const-string v2, "download error1:"

    .line 8
    .line 9
    invoke-static {v2}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget v3, p0, Lcom/meishu/sdk/core/utils/c0$a;->a:I

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/utils/x;->onFailure(Ljava/io/IOException;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
