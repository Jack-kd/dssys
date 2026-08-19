.class public Lcom/baidu/passbqt/view/CommonDialog$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Z

.field public c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->b:Z

    .line 6
    .line 7
    const/16 v0, 0x64

    .line 8
    .line 9
    iput v0, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->c:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->a:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method
