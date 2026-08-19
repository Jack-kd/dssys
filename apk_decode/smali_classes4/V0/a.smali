.class public final synthetic LV0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/database/sqlite/SQLiteDatabase;

.field public final synthetic c:Lcom/czhj/sdk/common/Database/SQLiteBuider$Insert;

.field public final synthetic d:Lcom/sigmob/sdk/base/db/a$a;


# direct methods
.method public synthetic constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/czhj/sdk/common/Database/SQLiteBuider$Insert;Lcom/sigmob/sdk/base/db/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LV0/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p2, p0, LV0/a;->c:Lcom/czhj/sdk/common/Database/SQLiteBuider$Insert;

    iput-object p3, p0, LV0/a;->d:Lcom/sigmob/sdk/base/db/a$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, LV0/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, LV0/a;->c:Lcom/czhj/sdk/common/Database/SQLiteBuider$Insert;

    iget-object v2, p0, LV0/a;->d:Lcom/sigmob/sdk/base/db/a$a;

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/base/db/a;->c(Landroid/database/sqlite/SQLiteDatabase;Lcom/czhj/sdk/common/Database/SQLiteBuider$Insert;Lcom/sigmob/sdk/base/db/a$a;)V

    return-void
.end method
