.class Lcom/umeng/commonsdk/internal/c$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/commonsdk/utils/onMessageSendListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/internal/c;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/commonsdk/internal/c;


# direct methods
.method public constructor <init>(Lcom/umeng/commonsdk/internal/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/umeng/commonsdk/internal/c$5;->a:Lcom/umeng/commonsdk/internal/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onMessageSend()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/c$5;->a:Lcom/umeng/commonsdk/internal/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/umeng/commonsdk/internal/c;->a(Lcom/umeng/commonsdk/internal/c;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/c$5;->a:Lcom/umeng/commonsdk/internal/c;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/umeng/commonsdk/internal/c;->a(Lcom/umeng/commonsdk/internal/c;)Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/umeng/commonsdk/internal/c$5;->a:Lcom/umeng/commonsdk/internal/c;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/umeng/commonsdk/internal/c;->a(Lcom/umeng/commonsdk/internal/c;)Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x0

    .line 30
    const v3, 0x8016

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v3, v1, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-static {p0}, Lcom/umeng/commonsdk/UMConfigureImpl;->removeMessageSendListener(Lcom/umeng/commonsdk/utils/onMessageSendListener;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
