.class Lcom/androidquery/callback/AbstractAjaxCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidquery/callback/AbstractAjaxCallback;->showProgress(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidquery/callback/AbstractAjaxCallback;

.field final synthetic val$p:Ljava/lang/Object;

.field final synthetic val$show:Z


# direct methods
.method public constructor <init>(Lcom/androidquery/callback/AbstractAjaxCallback;Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback$1;->this$0:Lcom/androidquery/callback/AbstractAjaxCallback;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/androidquery/callback/AbstractAjaxCallback$1;->val$p:Ljava/lang/Object;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/androidquery/callback/AbstractAjaxCallback$1;->val$show:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback$1;->val$p:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback$1;->this$0:Lcom/androidquery/callback/AbstractAjaxCallback;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/androidquery/callback/AbstractAjaxCallback;->access$000(Lcom/androidquery/callback/AbstractAjaxCallback;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-boolean v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback$1;->val$show:Z

    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Lcom/androidquery/util/Common;->showProgress(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
