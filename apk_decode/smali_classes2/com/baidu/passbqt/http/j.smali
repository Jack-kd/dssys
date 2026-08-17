.class public Lcom/baidu/passbqt/http/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/List;

.field public c:Ljava/lang/String;

.field public d:Lcom/baidu/passbqt/http/a;

.field public e:I

.field public f:Z

.field public g:Lcom/baidu/passbqt/http/ReqPriority;

.field public h:Ljava/util/HashMap;

.field public i:Ljava/lang/String;

.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/baidu/passbqt/http/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/baidu/passbqt/http/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/baidu/passbqt/http/j;->d:Lcom/baidu/passbqt/http/a;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/baidu/passbqt/http/j;->f:Z

    .line 13
    .line 14
    sget-object v0, Lcom/baidu/passbqt/http/ReqPriority;->b:Lcom/baidu/passbqt/http/ReqPriority;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/baidu/passbqt/http/j;->g:Lcom/baidu/passbqt/http/ReqPriority;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/baidu/passbqt/http/j;->h:Ljava/util/HashMap;

    .line 25
    .line 26
    const/16 v0, 0x1bb

    .line 27
    .line 28
    iput v0, p0, Lcom/baidu/passbqt/http/j;->j:I

    .line 29
    .line 30
    return-void
.end method
