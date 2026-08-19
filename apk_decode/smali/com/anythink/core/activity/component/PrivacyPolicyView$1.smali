.class final Lcom/anythink/core/activity/component/PrivacyPolicyView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/activity/component/PrivacyPolicyView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/activity/component/PrivacyPolicyView;


# direct methods
.method public constructor <init>(Lcom/anythink/core/activity/component/PrivacyPolicyView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView$1;->a:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView$1;->a:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/anythink/core/activity/component/PrivacyPolicyView;->f:Landroid/webkit/WebView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p1, Lcom/anythink/core/activity/component/PrivacyPolicyView;->k:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p1, Lcom/anythink/core/activity/component/PrivacyPolicyView;->j:Z

    .line 13
    .line 14
    invoke-static {}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->a()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView$1;->a:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    .line 18
    .line 19
    iget-object v0, p1, Lcom/anythink/core/activity/component/PrivacyPolicyView;->l:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->loadPolicyUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    :catchall_0
    :cond_0
    return-void
.end method
