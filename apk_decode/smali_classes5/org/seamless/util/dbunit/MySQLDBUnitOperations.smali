.class public abstract Lorg/seamless/util/dbunit/MySQLDBUnitOperations;
.super Lorg/seamless/util/dbunit/DBUnitOperations;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/seamless/util/dbunit/DBUnitOperations;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public disableReferentialIntegrity(Lorg/dbunit/database/IDatabaseConnection;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-interface {p1}, Lorg/dbunit/database/IDatabaseConnection;->getConnection()Ljava/sql/Connection;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "set foreign_key_checks=0"

    .line 6
    .line 7
    invoke-interface {p1, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p1

    .line 16
    new-instance v0, Ljava/lang/RuntimeException;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public enableReferentialIntegrity(Lorg/dbunit/database/IDatabaseConnection;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-interface {p1}, Lorg/dbunit/database/IDatabaseConnection;->getConnection()Ljava/sql/Connection;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "set foreign_key_checks=1"

    .line 6
    .line 7
    invoke-interface {p1, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p1

    .line 16
    new-instance v0, Ljava/lang/RuntimeException;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method
