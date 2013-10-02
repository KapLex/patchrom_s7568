.class public final Lmiui/content/res/ThemeResourcesSystem;
.super Lmiui/content/res/ThemeResources;
.source "ThemeResourcesSystem.java"


# static fields
.field private static sIcons:Lmiui/content/res/ThemeResources;

.field private static sLockscreen:Lmiui/content/res/ThemeResources;

.field private static sMiui:Lmiui/content/res/ThemeResources;

.field private static sSystemUI:Lmiui/content/res/ThemeResources;


# instance fields
.field protected mThemePath:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lmiui/content/res/ThemeResourcesSystem;Landroid/content/res/Resources;Lmiui/content/res/ThemeResources$MetaData;)V
    .locals 1
    .parameter "wrapped"
    .parameter "resources"
    .parameter "metaData"

    .prologue
    .line 37
    const-string v0, "framework-res"

    invoke-direct {p0, p1, p2, v0, p3}, Lmiui/content/res/ThemeResources;-><init>(Lmiui/content/res/ThemeResources;Landroid/content/res/Resources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V

    .line 38
    iget-object v0, p3, Lmiui/content/res/ThemeResources$MetaData;->themePath:Ljava/lang/String;

    iput-object v0, p0, Lmiui/content/res/ThemeResourcesSystem;->mThemePath:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private getThemeFileStreamMIUI(Ljava/lang/String;Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 3
    .parameter "relativeFilePath"
    .parameter "name"

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, info:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    const-string v1, "lock_screen_"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    sget-object v1, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    invoke-virtual {v1, p1}, Lmiui/content/res/ThemeResources;->getThemeFileStream(Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 81
    if-nez v0, :cond_0

    .line 82
    sget-object v1, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    invoke-virtual {v1, p2}, Lmiui/content/res/ThemeResources;->getThemeFileStream(Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 91
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 92
    sget-object v1, Lmiui/content/res/ThemeResourcesSystem;->sMiui:Lmiui/content/res/ThemeResources;

    invoke-virtual {v1, p1}, Lmiui/content/res/ThemeResources;->getThemeFileStream(Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 94
    :cond_1
    return-object v0

    .line 85
    :cond_2
    const-string/jumbo v1, "status_bar_toggle_"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    sget-object v1, Lmiui/content/res/ThemeResourcesSystem;->sSystemUI:Lmiui/content/res/ThemeResources;

    if-nez v1, :cond_3

    .line 87
    iget-object v1, p0, Lmiui/content/res/ThemeResourcesSystem;->mResources:Landroid/content/res/Resources;

    const-string v2, "com.android.systemui"

    invoke-static {v1, v2}, Lmiui/content/res/ThemeResources;->getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lmiui/content/res/ThemeResources;

    move-result-object v1

    sput-object v1, Lmiui/content/res/ThemeResourcesSystem;->sSystemUI:Lmiui/content/res/ThemeResources;

    .line 89
    :cond_3
    sget-object v1, Lmiui/content/res/ThemeResourcesSystem;->sSystemUI:Lmiui/content/res/ThemeResources;

    invoke-virtual {v1, p1}, Lmiui/content/res/ThemeResources;->getThemeFileStream(Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private getThemeFileStreamSystem(Ljava/lang/String;Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 2
    .parameter "relativeFilePath"
    .parameter "name"

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, info:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    const-string/jumbo v1, "sym_def_app_icon.png"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    invoke-virtual {p0, p1}, Lmiui/content/res/ThemeResourcesSystem;->getIconStream(Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 106
    :cond_0
    if-nez v0, :cond_1

    .line 107
    invoke-virtual {p0, p1}, Lmiui/content/res/ThemeResourcesSystem;->getThemeFileStreamInner(Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    :cond_1
    move-object v1, v0

    .line 109
    :goto_0
    return-object v1

    .line 102
    :cond_2
    const-string v1, "default_wallpaper.jpg"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getTopLevelThemeResources(Landroid/content/res/Resources;)Lmiui/content/res/ThemeResourcesSystem;
    .locals 4
    .parameter "resources"

    .prologue
    .line 24
    const-string v3, "icons"

    invoke-static {p0, v3}, Lmiui/content/res/ThemeResources;->getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lmiui/content/res/ThemeResources;

    move-result-object v3

    sput-object v3, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    .line 25
    const-string v3, "lockscreen"

    invoke-static {p0, v3}, Lmiui/content/res/ThemeResources;->getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lmiui/content/res/ThemeResources;

    move-result-object v3

    sput-object v3, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    .line 26
    const-string v3, "framework-miui-res"

    invoke-static {p0, v3}, Lmiui/content/res/ThemeResources;->getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lmiui/content/res/ThemeResources;

    move-result-object v3

    sput-object v3, Lmiui/content/res/ThemeResourcesSystem;->sMiui:Lmiui/content/res/ThemeResources;

    .line 28
    const/4 v1, 0x0

    .line 29
    .local v1, themeResources:Lmiui/content/res/ThemeResourcesSystem;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lmiui/content/res/ThemeResourcesSystem;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 30
    new-instance v2, Lmiui/content/res/ThemeResourcesSystem;

    sget-object v3, Lmiui/content/res/ThemeResourcesSystem;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    aget-object v3, v3, v0

    invoke-direct {v2, v1, p0, v3}, Lmiui/content/res/ThemeResourcesSystem;-><init>(Lmiui/content/res/ThemeResourcesSystem;Landroid/content/res/Resources;Lmiui/content/res/ThemeResources$MetaData;)V

    .line 29
    .end local v1           #themeResources:Lmiui/content/res/ThemeResourcesSystem;
    .local v2, themeResources:Lmiui/content/res/ThemeResourcesSystem;
    add-int/lit8 v0, v0, 0x1

    move-object v1, v2

    .end local v2           #themeResources:Lmiui/content/res/ThemeResourcesSystem;
    .restart local v1       #themeResources:Lmiui/content/res/ThemeResourcesSystem;
    goto :goto_0

    .line 33
    :cond_0
    return-object v1
.end method


# virtual methods
.method public checkUpdate()Z
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0}, Lmiui/content/res/ThemeResources;->checkUpdate()Z

    .line 43
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0}, Lmiui/content/res/ThemeResources;->checkUpdate()Z

    .line 44
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sMiui:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0}, Lmiui/content/res/ThemeResources;->checkUpdate()Z

    .line 45
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sSystemUI:Lmiui/content/res/ThemeResources;

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sSystemUI:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0}, Lmiui/content/res/ThemeResources;->checkUpdate()Z

    .line 46
    :cond_0
    invoke-super {p0}, Lmiui/content/res/ThemeResources;->checkUpdate()Z

    move-result v0

    return v0
.end method

.method public containsAwesomeLockscreenEntry(Ljava/lang/String;)Z
    .locals 3
    .parameter "entry"

    .prologue
    .line 171
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "advance/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/content/res/ThemeResources;->containsEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAwesomeLockscreenFileStream(Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 3
    .parameter "name"

    .prologue
    .line 175
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "advance/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/content/res/ThemeResources;->getThemeFileStream(Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "resource"
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 129
    invoke-virtual {p0, p2}, Lmiui/content/res/ThemeResourcesSystem;->getIconStream(Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 130
    .local v0, info:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    if-eqz v0, :cond_1

    .line 132
    const/4 v1, 0x0

    .line 133
    .local v1, opts:Landroid/graphics/BitmapFactory$Options;
    :try_start_0
    iget v4, v0, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mDensity:I

    if-lez v4, :cond_0

    .line 134
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v1           #opts:Landroid/graphics/BitmapFactory$Options;
    .local v2, opts:Landroid/graphics/BitmapFactory$Options;
    :try_start_1
    iget v4, v0, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mDensity:I

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3

    move-object v1, v2

    .line 137
    .end local v2           #opts:Landroid/graphics/BitmapFactory$Options;
    .restart local v1       #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :try_start_2
    iget-object v4, v0, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    const/4 v5, 0x0

    invoke-static {v4, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    .line 141
    :try_start_3
    iget-object v4, v0, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 147
    .end local v1           #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_0
    return-object v3

    .line 138
    .restart local v1       #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v4

    .line 141
    :goto_1
    :try_start_4
    iget-object v4, v0, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 142
    :catch_1
    move-exception v4

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v3

    .line 141
    :goto_2
    :try_start_5
    iget-object v4, v0, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 143
    :goto_3
    throw v3

    .line 142
    :catch_2
    move-exception v4

    goto :goto_3

    .line 140
    .end local v1           #opts:Landroid/graphics/BitmapFactory$Options;
    .restart local v2       #opts:Landroid/graphics/BitmapFactory$Options;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #opts:Landroid/graphics/BitmapFactory$Options;
    .restart local v1       #opts:Landroid/graphics/BitmapFactory$Options;
    goto :goto_2

    .line 138
    .end local v1           #opts:Landroid/graphics/BitmapFactory$Options;
    .restart local v2       #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v4

    move-object v1, v2

    .end local v2           #opts:Landroid/graphics/BitmapFactory$Options;
    .restart local v1       #opts:Landroid/graphics/BitmapFactory$Options;
    goto :goto_1

    .line 142
    :catch_4
    move-exception v4

    goto :goto_0
.end method

.method public getIconStream(Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 1
    .parameter "relativeFilePath"

    .prologue
    .line 151
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0, p1}, Lmiui/content/res/ThemeResources;->getThemeFileStream(Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLockscreenStream(Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 1
    .parameter "relativeFilePath"

    .prologue
    .line 155
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0, p1}, Lmiui/content/res/ThemeResources;->getThemeFileStream(Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLockscreenWallpaper()Ljava/io/File;
    .locals 3

    .prologue
    .line 159
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmiui/content/res/ThemeResourcesSystem;->mThemePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lock_wallpaper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, ret:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lmiui/content/res/ThemeResourcesSystem;->mWrapped:Lmiui/content/res/ThemeResources;

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lmiui/content/res/ThemeResourcesSystem;->mWrapped:Lmiui/content/res/ThemeResources;

    check-cast v1, Lmiui/content/res/ThemeResourcesSystem;

    invoke-virtual {v1}, Lmiui/content/res/ThemeResourcesSystem;->getLockscreenWallpaper()Ljava/io/File;

    move-result-object v0

    .line 163
    :cond_1
    return-object v0
.end method

.method public getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "id"

    .prologue
    .line 67
    sget-object v1, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    invoke-virtual {v1, p1}, Lmiui/content/res/ThemeResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 68
    .local v0, ret:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 69
    sget-object v1, Lmiui/content/res/ThemeResourcesSystem;->sMiui:Lmiui/content/res/ThemeResources;

    invoke-virtual {v1, p1}, Lmiui/content/res/ThemeResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 71
    :cond_0
    if-nez v0, :cond_1

    .line 72
    invoke-virtual {p0, p1}, Lmiui/content/res/ThemeResourcesSystem;->getThemeCharSequenceInner(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 74
    :cond_1
    return-object v0
.end method

.method public getThemeFileStream(ILjava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 2
    .parameter "cookieType"
    .parameter "relativeFilePath"

    .prologue
    .line 114
    const/16 v1, 0x2f

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, name:Ljava/lang/String;
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    invoke-direct {p0, p2, v0}, Lmiui/content/res/ThemeResourcesSystem;->getThemeFileStreamMIUI(Ljava/lang/String;Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p2, v0}, Lmiui/content/res/ThemeResourcesSystem;->getThemeFileStreamSystem(Ljava/lang/String;Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public getThemeInt(I)Ljava/lang/Integer;
    .locals 2
    .parameter "id"

    .prologue
    .line 55
    sget-object v1, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    invoke-virtual {v1, p1}, Lmiui/content/res/ThemeResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 56
    .local v0, ret:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 57
    sget-object v1, Lmiui/content/res/ThemeResourcesSystem;->sMiui:Lmiui/content/res/ThemeResources;

    invoke-virtual {v1, p1}, Lmiui/content/res/ThemeResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 59
    :cond_0
    if-nez v0, :cond_1

    .line 60
    invoke-virtual {p0, p1}, Lmiui/content/res/ThemeResourcesSystem;->getThemeIntInner(I)Ljava/lang/Integer;

    move-result-object v0

    .line 62
    :cond_1
    return-object v0
.end method

.method public hasAwesomeLockscreen()Z
    .locals 2

    .prologue
    .line 167
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    const-string v1, "advance/manifest.xml"

    invoke-virtual {v0, v1}, Lmiui/content/res/ThemeResources;->containsEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasIcon(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 125
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0, p1}, Lmiui/content/res/ThemeResources;->containsEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasValues()Z
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lmiui/content/res/ThemeResources;->hasValues()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0}, Lmiui/content/res/ThemeResources;->hasValues()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sMiui:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0}, Lmiui/content/res/ThemeResources;->hasValues()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetIcons()V
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0}, Lmiui/content/res/ThemeResources;->checkUpdate()Z

    .line 122
    return-void
.end method
