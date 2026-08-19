.class Lcom/umeng/vt/diff/Channel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/vt/diff/Channel;->registerListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/vt/diff/Channel;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/umeng/vt/diff/Channel;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/umeng/vt/diff/Channel$1;->this$0:Lcom/umeng/vt/diff/Channel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/umeng/vt/diff/Channel$1;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onImprintValueChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p2, "utm-visual"

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/umeng/vt/diff/Channel$1;->this$0:Lcom/umeng/vt/diff/Channel;

    .line 10
    .line 11
    iget-object p2, p0, Lcom/umeng/vt/diff/Channel$1;->val$context:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/umeng/vt/diff/Channel;->loadConfig(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
