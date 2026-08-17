.class public Lcom/meishu/sdk/core/utils/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/core/utils/w$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/IntentFilter;

.field public final b:Lcom/meishu/sdk/core/utils/w$b;

.field public c:Z

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    .line 5
    .line 6
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/meishu/sdk/core/utils/w;->a:Landroid/content/IntentFilter;

    .line 12
    .line 13
    new-instance v0, Lcom/meishu/sdk/core/utils/w$b;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, p0, v1}, Lcom/meishu/sdk/core/utils/w$b;-><init>(Lcom/meishu/sdk/core/utils/w;Lcom/meishu/sdk/core/utils/w$a;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/meishu/sdk/core/utils/w;->b:Lcom/meishu/sdk/core/utils/w$b;

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic a(Lcom/meishu/sdk/core/utils/w;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/utils/w;->c:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic b(Lcom/meishu/sdk/core/utils/w;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/utils/w;->d:Z

    .line 2
    .line 3
    return p1
.end method
