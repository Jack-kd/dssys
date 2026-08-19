.class public Lcom/meishu/sdk/core/view/MSDialog$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/core/view/MSDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private canceledOnTouchOutside:Z

.field private context:Landroid/content/Context;

.field private iconUrl:Ljava/lang/String;

.field private negativeListener:Landroid/view/View$OnClickListener;

.field private negativeText:Ljava/lang/String;

.field private positiveListener:Landroid/view/View$OnClickListener;

.field private positiveText:Ljava/lang/String;

.field private showCloseBtn:Z

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/core/view/MSDialog$Builder;->context:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public build()Lcom/meishu/sdk/core/view/MSDialog;
    .locals 2

    .line 1
    new-instance v0, Lcom/meishu/sdk/core/view/MSDialog;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/core/view/MSDialog$Builder;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/meishu/sdk/core/view/MSDialog;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/meishu/sdk/core/view/MSDialog$Builder;->title:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/view/MSDialog;->access$202(Lcom/meishu/sdk/core/view/MSDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/meishu/sdk/core/view/MSDialog$Builder;->iconUrl:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/view/MSDialog;->access$302(Lcom/meishu/sdk/core/view/MSDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/meishu/sdk/core/view/MSDialog$Builder;->showCloseBtn:Z

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/view/MSDialog;->access$402(Lcom/meishu/sdk/core/view/MSDialog;Z)Z

    .line 21
    .line 22
    .line 23
    iget-boolean v1, p0, Lcom/meishu/sdk/core/view/MSDialog$Builder;->canceledOnTouchOutside:Z

    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/view/MSDialog;->access$502(Lcom/meishu/sdk/core/view/MSDialog;Z)Z

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/meishu/sdk/core/view/MSDialog$Builder;->positiveText:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/view/MSDialog;->access$602(Lcom/meishu/sdk/core/view/MSDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/meishu/sdk/core/view/MSDialog$Builder;->negativeText:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/view/MSDialog;->access$702(Lcom/meishu/sdk/core/view/MSDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/meishu/sdk/core/view/MSDialog$Builder;->negativeListener:Landroid/view/View$OnClickListener;

    .line 39
    .line 40
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/view/MSDialog;->access$002(Lcom/meishu/sdk/core/view/MSDialog;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/meishu/sdk/core/view/MSDialog$Builder;->positiveListener:Landroid/view/View$OnClickListener;

    .line 44
    .line 45
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/view/MSDialog;->access$102(Lcom/meishu/sdk/core/view/MSDialog;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    .line 46
    .line 47
    .line 48
    return-object v0
.end method

.method public setCanceledOnTouchOutside(Z)Lcom/meishu/sdk/core/view/MSDialog$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/view/MSDialog$Builder;->canceledOnTouchOutside:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setIconUrl(Ljava/lang/String;)Lcom/meishu/sdk/core/view/MSDialog$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/view/MSDialog$Builder;->iconUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/meishu/sdk/core/view/MSDialog$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/view/MSDialog$Builder;->negativeText:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/view/MSDialog$Builder;->negativeListener:Landroid/view/View$OnClickListener;

    .line 4
    .line 5
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/meishu/sdk/core/view/MSDialog$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/view/MSDialog$Builder;->positiveText:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/view/MSDialog$Builder;->positiveListener:Landroid/view/View$OnClickListener;

    .line 4
    .line 5
    return-object p0
.end method

.method public setShowCloseBtn(Z)Lcom/meishu/sdk/core/view/MSDialog$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/view/MSDialog$Builder;->showCloseBtn:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/meishu/sdk/core/view/MSDialog$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/view/MSDialog$Builder;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
