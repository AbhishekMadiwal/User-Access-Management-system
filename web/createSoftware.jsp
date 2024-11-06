<!DOCTYPE html>
<html>
<head>
    <title>Create Software</title>
</head>
<body>
    <form action="SoftwareServlet" method="post">
        <label>Software Name:</label>
        <input type="text" name="name" required><br>
        <label>Description:</label>
        <textarea name="description"></textarea><br>
        <label>Access Levels:</label><br>
        <input type="checkbox" name="access_levels" value="Read"> Read
        <input type="checkbox" name="access_levels" value="Write"> Write
        <input type="checkbox" name="access_levels" value="Admin"> Admin<br>
        <button type="submit">Add Software</button>
    </form>
</body>
</html>
