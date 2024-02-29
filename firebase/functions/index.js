const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp();

exports.onUserDeleted = functions.auth.user().onDelete(async (user) => {
  let firestore = admin.firestore();
  let userRef = firestore.doc("users/" + user.uid);
  await firestore
    .collection("userPosts")
    .where("postUser", "==", userRef)
    .get()
    .then(async (querySnapshot) => {
      for (var doc of querySnapshot.docs) {
        console.log(`Deleting document ${doc.id} from collection userPosts`);
        await doc.ref.delete();
      }
    });
  await firestore.collection("users").doc(user.uid).delete();
  await firestore
    .collection("storyComments")
    .where("commentUser", "==", userRef)
    .get()
    .then(async (querySnapshot) => {
      for (var doc of querySnapshot.docs) {
        console.log(
          `Deleting document ${doc.id} from collection storyComments`,
        );
        await doc.ref.delete();
      }
    });
  await firestore
    .collection("chats")
    .where("user_a", "==", userRef)
    .get()
    .then(async (querySnapshot) => {
      for (var doc of querySnapshot.docs) {
        console.log(`Deleting document ${doc.id} from collection chats`);
        await doc.ref.delete();
      }
    });
  await firestore
    .collection("chat_messages")
    .where("user", "==", userRef)
    .get()
    .then(async (querySnapshot) => {
      for (var doc of querySnapshot.docs) {
        console.log(
          `Deleting document ${doc.id} from collection chat_messages`,
        );
        await doc.ref.delete();
      }
    });
});
