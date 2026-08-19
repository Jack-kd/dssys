.class Lcom/octopus/ad/internal/utilities/ViewUtil$5;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/utilities/ViewUtil;->createComplianceView(Landroid/content/Context;Lcom/octopus/ad/model/ComplianceInfo;FZ)Landroidx/appcompat/widget/AppCompatTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$complianceInfo:Lcom/octopus/ad/model/ComplianceInfo;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/model/ComplianceInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/utilities/ViewUtil$5;->val$complianceInfo:Lcom/octopus/ad/model/ComplianceInfo;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/octopus/ad/internal/utilities/ViewUtil$5;->val$complianceInfo:Lcom/octopus/ad/model/ComplianceInfo;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/octopus/ad/model/ComplianceInfo;->getFunctionDescUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-static {p1, v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->openLocalBrowser(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
