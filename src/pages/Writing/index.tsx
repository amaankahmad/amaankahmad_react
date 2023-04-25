import RootPage from "../root";

const Writing = () => {
  return (
    <RootPage header={"Coming soon"}>
      <div className="bg-white-900 min-h-screen flex flex-col items-center justify-center">
        <div className="bg-white rounded-lg p-8 max-w-md w-full">
          <h1 className="text-3xl font-bold text-gray-900 mb-4">Coming Soon</h1>
          <p className="text-gray-800 text-lg mb-8">
            We are currenty working very hard to get this page to you!
          </p>
          <p className="text-gray-800 text-lg mb-8">Please check back soon.</p>
        </div>
      </div>
    </RootPage>
  );
};

export default Writing;
