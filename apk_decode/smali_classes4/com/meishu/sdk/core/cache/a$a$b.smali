.class public Lcom/meishu/sdk/core/cache/a$a$b;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/cache/a$a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/meishu/sdk/core/cache/a$a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/cache/a$a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/cache/a$a$b;->b:Lcom/meishu/sdk/core/cache/a$a;

    .line 2
    .line 3
    iput p2, p0, Lcom/meishu/sdk/core/cache/a$a$b;->a:I

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
    iget-object v0, p0, Lcom/meishu/sdk/core/cache/a$a$b;->b:Lcom/meishu/sdk/core/cache/a$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/core/cache/a$a;->b:Lcom/meishu/sdk/core/utils/y;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Ljava/io/IOException;

    .line 8
    .line 9
    const-string v2, "download image error2:"

    .line 10
    .line 11
    invoke-static {v2}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget v3, p0, Lcom/meishu/sdk/core/cache/a$a$b;->a:I

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/utils/y;->onFailure(Ljava/io/IOException;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
