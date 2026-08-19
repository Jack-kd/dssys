.class public Lcom/meishu/sdk/core/utils/a0$h;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/String;Lcom/meishu/sdk/core/utils/y;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/utils/y;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/utils/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/a0$h;->a:Lcom/meishu/sdk/core/utils/y;

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
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/a0$h;->a:Lcom/meishu/sdk/core/utils/y;

    .line 2
    .line 3
    new-instance v1, Ljava/io/IOException;

    .line 4
    .line 5
    const-string v2, "get file error"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/utils/y;->onFailure(Ljava/io/IOException;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
